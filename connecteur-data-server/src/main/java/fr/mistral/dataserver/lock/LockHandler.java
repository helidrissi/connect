package fr.mistral.dataserver.lock;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

/**
 * Cette classe permet de peupler la table fileLock de manière à reproduire les mécanismes de lock d'enregistrement
 * Cobol.
 * 
 * Le principe général de fonctionnement est le suivant :
 * 
 * <ul>
 * <li>Un lock associe un propriétaire à une ligne de données</li>
 * <li>Un propriétaire est modélisé par un processId et un fileHandle (stocké dans filename)</li>
 * <li>Une ligne de données est modélisée par un nom de table et un recordNumber</li>
 * </ul>
 * 
 * <p>
 * Pour chaque lock, on enregistre les informations suivantes :
 * <ul>
 * <li>lockUpdate : la date de dernier lock. NULL si pas de lock actif</li>
 * <li>lockCreation : la date de création du lock</li>
 * <li>Ces colonnes sont introduites pour faciliter le débuggage</li>
 * </ul>
 * 
 * <ul>
 * <li>TODO : prise en compte WITH MULTIPLE RECORDS</li>
 * <li>TODO : prise en compte fichier AUTOMATIC</li>
 * <li>TODO : prise en compte fichier EXCLUSIVE</li>
 * </ul>
 */
public class LockHandler {

	private static final Logger LOGGER = LoggerFactory.getLogger(LockHandler.class);

	// Colonnes de la table FileLock pour le propriétaire du lock
	
	/**
	 * Identification d'un fichier ouvert : le fileHandle (numéro de pointeur du fichier ouvert) est utilisé car
	 * il permet d'identifier l'ouverture d'un fichier. Si un programme ouvre 2 fois le même fichier, le fileHandle
	 * est différent. Fait parti des informations du propriétaire du lock.
	 */
	private static final String PARAMETER_FILENAME = "filename";
	/**
	 * Identification du process appelant. Fait parti des informations du propriétaire du lock.
	 */
	private static final String PARAMETER_PROCESS_ID = "processId";
	
	// Colonnes de la table FileLock pour identification de la donnée lockée
	
	/**
	 * Identification de la ligne lockée.
	 */
	private static final String PARAMETER_RECORD_NUMBER = "recordNumber";
	/**
	 * Identification du fichier locké.
	 */
	private static final String PARAMETER_TABLENAME = "tablename";

	/**
	 * Ajout d'un lock:
	 * <ul>
	 * <li>Le couple tablename/recordNumber permet de déterminer si la donnée est référencée dans la table</li>
	 * <li>Si la donnée n'est pas présente dans la table, ajout d'un nouvel enregistrement</li>
	 * <li>Si la donnée est référencée dans la table, mais sans lock actif (lockUpdate IS NULL) : attribution et
	 *     activation du lock</li>
	 * <li>Si la donnée est référencée dans la table et lockée : aucun enregistrement mis à jour. Le nombre
	 *     d'enregistrement mis à jour est 0 ce qui permet de déclencher une erreur</li>
	 * </ul>
	 * <p>
	 * Les paramètres de la requête sont:
	 * <ul>
	 * <li>:filename, :processId : l'identité du demandeur de lock</li>
	 * <li>:tablename, :recordNumber : la ligne de données pour laquelle on demande le lock</li>s
	 * </ul>
	 */
	private static final String QUERY_LOCK = "INSERT INTO fileLock "
			+ "AS l (tablename, recordNumber, lockCreation, lockUpdate, processId, filename) "
			+ "VALUES (:tablename, :recordNumber, NOW(), NOW(), :processId, :filename) "
			+ "ON CONFLICT (tablename, recordNumber) "
			+ "DO UPDATE SET lockUpdate = EXCLUDED.lockUpdate, processId = EXCLUDED.processId, filename = EXCLUDED.filename "
			+ "WHERE l.lockUpdate IS NULL";

	/**
	 * Vérification de l'existence d'un lock d'enregistrement ; retourne l'identité du propriétaire du lock (processId,
	 * filename).
	 */
	private static final String QUERY_CHECK = "SELECT processId, filename FROM fileLock "
			+ "WHERE tablename = :tablename AND recordNumber = :recordNumber AND lockUpdate IS NOT NULL "
			+ "AND (processId != :processId OR filename != :filename) ";

	/**
	 * Déverrouillage d'un lock. Si le nombre de résultats est de 0, c'est que l'enregistrement n'était pas verrouillé
	 * ou pas verrouillé par le demandeur.
	 * <p>
	 * Les paramètres de la requête sont:
	 * <ul>
	 * <li>:filename, :processId : l'identité de celui qui demande le déverrouillage</li>
	 * <li>:tablename, :recordNumber : la ligne de données pour laquelle on demande le lock</li>s
	 * </ul>
	 */
	private static final String QUERY_UNLOCK = "UPDATE fileLock SET lockUpdate = NULL "
			+ "WHERE (processId = :processId AND filename = :filename) "
			+ "AND tablename = :tablename AND recordNumber = :recordNumber "
			+ "AND lockUpdate = NULL ";

	/**
	 * Requête permettant de désactiver tous les locks d'un propriétaire (processId + filename). Utilisé à la fermeture
	 * du fichier (rappel: filename est un fileHandle, un fichier ouvert plusieurs fois a des fileHandle différents).
	 */
	private static final String QUERY_UNLOCK_BY_PROCESS_ID = "UPDATE fileLock SET lockUpdate = NULL "
			+ "WHERE processId = :processId AND filename = :filename ";

	/**
	 * Requête listant les locks d'un processId.
	 */
	private static final String QUERY_LIST_BY_PROCESS_ID = "SELECT processId, filename FROM fileLock WHERE "
			+ "WHERE processId = :processId ";

	/**
	 * Purge générale des locks.
	 */
	private static final String QUERY_PURGE = "DELETE FROM fileLock "
			+ "WHERE lockUpdate IS NULL ";

	private final NamedParameterJdbcTemplate jdbcTemplate;

	public LockHandler(DataSource dataSource) {
		this.jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	/**
	 * Mis en place au moment du READ :
	 * <ul>
	 * <li>Si fichier MANUAL et WITH LOCK explicite</li>
	 * <li>Si fichier AUTOMATIC et WITH NO LOCK ou ALLOWING UPDATERS <b>absent</b></li>
	 * <li>TODO Si fichier EXCLUSIVE, les logs sont gérés au niveau table</li>
	 * </ul>
	 */
	public boolean lockResource(LockOwner self, String tablename, Long recordNumber) {
		MapSqlParameterSource args = new MapSqlParameterSource();
		args.addValue(PARAMETER_TABLENAME, tablename);
		args.addValue(PARAMETER_RECORD_NUMBER, recordNumber);
		args.addValue(PARAMETER_PROCESS_ID, self.getProcessId());
		args.addValue(PARAMETER_FILENAME, self.getFileHandle());
		
		int updated = jdbcTemplate.update(QUERY_LOCK, args);
		if (updated > 1) {
			throw new IllegalStateException(String.format("Incompatible value %d for insert or update", updated));
		}
		if (updated == 1 && LOGGER.isDebugEnabled()) {
			LOGGER.debug("Lock {}-{} par {}-{}", tablename, recordNumber, self.getProcessId(), self.getFileHandle());
		}
		return updated == 1;
	}

	/**
	 * Vérifié au moment du READ, dans tous les cas où un lock est nécessaire @see LockHandler#lockResource(LockOwner, IDataServerEntity)
	 * 
	 * Vérifié systématiquement au moment du WRITE.
	 */
	public LockOwner getLockedByOther(LockOwner self, String tablename, Long recordNumber) {
		MapSqlParameterSource args = new MapSqlParameterSource();
		args.addValue(PARAMETER_TABLENAME, tablename);
		args.addValue(PARAMETER_RECORD_NUMBER, recordNumber);
		args.addValue(PARAMETER_PROCESS_ID, self.getProcessId());
		args.addValue(PARAMETER_FILENAME, self.getFileHandle());
		
		List<LockOwner> owners = listOwners(args);
		if (!owners.isEmpty() && LOGGER.isDebugEnabled()) {
			LockOwner owner = owners.get(0);
			if (LOGGER.isDebugEnabled()) {
				LOGGER.debug("Lock détenu par {}-{} pour la ressource {}-{} (vérifié par {}-{})",
						owner.getProcessId(), owner.getFileHandle(),
						tablename, recordNumber,
						self.getProcessId(), self.getFileHandle());
			}
		}
		return owners.isEmpty() ? null : owners.get(0);
	}

	/**
	 * Si fichier <b>sans</b>WITH LOCK ON MULTIPLE RECORDS, appelé lors dès la réalisation d'une nouvelle opération
	 * d'I-O sur le même fichier.
	 */
	public void releaseLock(LockOwner self, String tablename, Long recordNumber) {
		MapSqlParameterSource args = new MapSqlParameterSource();
		args.addValue(PARAMETER_TABLENAME, tablename);
		args.addValue(PARAMETER_RECORD_NUMBER, recordNumber);
		args.addValue(PARAMETER_PROCESS_ID, self.getProcessId());
		args.addValue(PARAMETER_FILENAME, self.getFileHandle());
		
		int updated = jdbcTemplate.update(QUERY_UNLOCK, args);
		if (updated == 0) {
			if (getLockedByOther(self, tablename, recordNumber) != null) {
				LOGGER.warn("La ressource {}-{} ne peut pas être relâchée par {}-{} car lockée par un autre",
						tablename, recordNumber, self.getProcessId(), self.getFileHandle());
			} else {
				LOGGER.info("La ressource {}-{} est déjà relâchée ; unlock ignoré",
						tablename, recordNumber);
			}
		}
	}

	/**
	 * Appelé à la fermeture d'un fichier.
	 */
	public void releaseAllLocks(LockOwner self) {
		MapSqlParameterSource args = new MapSqlParameterSource();
		args.addValue(PARAMETER_PROCESS_ID, self.getProcessId());
		args.addValue(PARAMETER_FILENAME, self.getFileHandle());
		
		int updated = jdbcTemplate.update(QUERY_UNLOCK_BY_PROCESS_ID, args);
		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("{} ressources relâchées par un releaseAllLocks", updated);
		}
	}

	/**
	 * Méthode utilitaire pour consulter les locks courants.
	 */
	public List<LockTarget> listLocks(LockOwner owner) {
		MapSqlParameterSource args = new MapSqlParameterSource();
		args.addValue(PARAMETER_PROCESS_ID, owner.getProcessId());
		
		return jdbcTemplate.query(QUERY_LIST_BY_PROCESS_ID, args, this::mapLockTarget);
	}

	/**
	 * Méthode utilitaire pour vider la table des entrées non usitées (lock NULL).
	 */
	public void purgeOrphanLocks() {
		MapSqlParameterSource args = new MapSqlParameterSource();
		
		int updated = jdbcTemplate.update(QUERY_PURGE, args);
		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("{} lignes nettoyées par un purgeOrphanLocks", updated);
		}
	}

	private LockOwner mapLockOwner(ResultSet rs, Integer rownum) throws SQLException {
		return new LockOwner(rs.getInt(PARAMETER_PROCESS_ID), rs.getString(PARAMETER_FILENAME));
	}

	private LockTarget mapLockTarget(ResultSet rs, Integer rownum) throws SQLException {
		return new LockTarget(rs.getString(PARAMETER_TABLENAME), rs.getLong(PARAMETER_RECORD_NUMBER));
	}

	private List<LockOwner> listOwners(MapSqlParameterSource args) {
		return jdbcTemplate.query(QUERY_CHECK, args, this::mapLockOwner);
	}

}
