package fr.mistral.dataserver.handlers;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.sql.Time;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntSupplier;
import java.util.function.LongConsumer;
import java.util.function.LongSupplier;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

import fr.mistral.dataserver.command.CommandKeyOperator;
import fr.mistral.dataserver.command.CommandReadDirection;
import fr.mistral.dataserver.command.DataServerCommand;
import fr.mistral.dataserver.command.KeyIdentifier;
import fr.mistral.dataserver.context.FileContext;
import fr.mistral.dataserver.context.FileContextHolder;
import fr.mistral.dataserver.model.mx.IDataServerEntity;
import fr.mistral.dataserver.server.IDataHandler;
import fr.mistral.dataserver.server.LineResult;
import fr.mistral.jrecord.FdFileHelper;
import net.sf.JRecord.Common.IFieldDetail;
import net.sf.JRecord.Details.AbstractLine;
import net.sf.JRecord.Details.LayoutDetail;
import net.sf.JRecord.Details.Line;
import net.sf.JRecord.Details.fieldValue.IFieldValue;
import net.sf.JRecord.IO.AbstractLineWriter;
import net.sf.JRecord.Types.Type;
import net.sf.JRecord.Types.TypeChar;
import net.sf.JRecord.Types.TypeManager;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;

public abstract class AbstractDataHandler<T extends IDataServerEntity> implements IDataHandler {

	private static final String FIELD_DB_RECORD_NUMBER = "recordNumber";

	private final Logger logger = LoggerFactory.getLogger(getClass());

	private final Logger sqlLogger = LoggerFactory.getLogger("sql." + getClass().getName());

	private final Logger jsonLogger = LoggerFactory.getLogger("json." + getClass().getName());

	private EntityManagerFactory entityManagerFactory;

	/**
	 * Lecture d'un enregistrement
	 */
	private final ICobolIOBuilder ioBuilder;

	/**
	 * Dans les couches basses, les clés sont identifiées par leur ordre
	 */
	private final List<String> orderedKeyNames;

	/**
	 * Ecriture des enregistrements sous forme textuelle
	 */
	private final ICobolIOBuilder textBuilder;

	/**
	 * Type de l'entité Java
	 */
	private final Class<T> targetType;

	/**
	 * Décomposition des clés
	 */
	private final Map<String, List<String>> compositeKeys;

	/**
	 * Correspondance des champs Cobol et des colonnes base de données
	 */
	private final Map<String, IEntityFieldMapper<T>> keys;

	/**
	 * Nom de la record key
	 */
	private String recordKeyName;

	@SuppressWarnings("deprecation")
	public AbstractDataHandler(String resourcePath, String basename, Class<T> targetType,
			String recordKeyName,
			Map<String, List<String>> compositeKeys, Map<String, IEntityFieldMapper<T>> keys) throws IOException {
		// récupération des parsers pour les données
		this.ioBuilder = FdFileHelper.newIOBuilderFromFd(resourcePath, basename);
		this.textBuilder = FdFileHelper.newTextBuilderFromFd(resourcePath, basename);
		this.recordKeyName = recordKeyName;
		
		// détermination de l'ordre des clés par position du champ
		List<String> keyNames = new ArrayList<>();
		keyNames.addAll(compositeKeys.keySet());
		final LayoutDetail layout = ioBuilder.getLayout();
		Collections.<String>sort(keyNames, (a, b) -> {
			// si même nom de clé, c'est le même élément
			if (a.equals(b)) {
				return 0;
			}
			// la record key est toujours en première position
			if (a.equals(getRecordKey())) {
				return -1;
			}
			if (b.equals(getRecordKey())) {
				return 1;
			}
			// les autres clés sont ordonnées par position, par rapport au premier champ
			return Integer.compare(
					layout.getFieldFromName(compositeKeys.get(a).get(0)).getPos(),
					layout.getFieldFromName(compositeKeys.get(b).get(0)).getPos()
			);
		}); 
		this.orderedKeyNames = ImmutableList.copyOf(keyNames);
		this.targetType = targetType;
		this.compositeKeys = compositeKeys;
		this.keys = keys;
		
		// vérification que le constructeur est disponible
		try {
			targetType.newInstance(); // NOSONAR
		} catch (Exception e) {
			throw new IllegalStateException(e);	
		}
	}

	@Override
	public List<String> getAliases() {
		return Collections.emptyList();
	}

	@Override
	public ICobolIOBuilder getIOBuilder() {
		return ioBuilder;
	}

	public EntityManagerFactory getEntityManagerFactory() {
		return entityManagerFactory;
	}

	@Override
	public void setEntityManagerFactory(EntityManagerFactory entityManagerFactory) {
		this.entityManagerFactory = entityManagerFactory;
	}

	public void doWithEntityManager(Consumer<EntityManager> task, boolean rollbackOnly) {
		doWithEntityManager(task, rollbackOnly, null);
	}

	public void doWithEntityManager(Consumer<EntityManager> task, boolean rollbackOnly, EntityManager externalEntityManager) {
		doReturnWithEntityManager(i -> { task.accept(i); return null; }, rollbackOnly, externalEntityManager);
	}

	public LineResult doReturnWithEntityManager(Function<EntityManager, LineResult> task, boolean rollbackOnly) {
		return doReturnWithEntityManager(task, rollbackOnly, null);
	}

	public LineResult doReturnWithEntityManager(Function<EntityManager, LineResult> task, boolean rollbackOnly, EntityManager externalEntityManager) {
		if (externalEntityManager == null) {
			EntityManager entityManager = entityManagerFactory.createEntityManager();
			try {
				EntityTransaction entityTransaction = entityManager.getTransaction();
				if (rollbackOnly) {
					entityTransaction.setRollbackOnly();
				}
				entityManager.getTransaction().begin();
				LineResult result = task.apply(entityManager);
				entityManager.flush();
				if (entityTransaction.getRollbackOnly()) {
					logger.info("Perform expected rollback");
					entityManager.getTransaction().rollback();
				} else {
					logger.info("Perform expected commit");
					entityManager.getTransaction().commit();
				}
				return result;
			} finally {
				if (entityManager.getTransaction().isActive()) {
					logger.warn("Perform rollback");
					entityManager.getTransaction().rollback();
				}
				entityManager.close();
			}
		} else {
			return task.apply(externalEntityManager);
		}
	}

	@Override
	public String mapKeyToKeyName(KeyIdentifier keyIdentifier) {
		if (keyIdentifier.isEmpty()) {
			throw new IllegalStateException("L'application de la clé par défaut doit être appliquée avant cette méthode");
		} else if (keyIdentifier.isNumeric()) {
			return orderedKeyNames.get(keyIdentifier.getNumericIdentifier());
		} else {
			return keyIdentifier.getKeyName();
		}
	}

	@Override
	public List<Object> mapKeyToJava(String keyName, Line line) {
		List<Object> values = new ArrayList<>();
		
		if (compositeKeys.containsKey(keyName)) {
			List<String> fields = compositeKeys.get(keyName);
			for (String field : fields) {
				values.add(mapKeyToJava(line.getFieldValue(field)));
			}
			return values;
		} else {
			throw new IllegalStateException(String.format("%s - clé non référencée",
					keyName));
		}
	}

	private Object mapKeyToJava(IFieldValue cobolFieldValue) {
		IFieldDetail fieldDetail = cobolFieldValue.getFieldDetail();
		Type type = TypeManager.getInstance().getType(fieldDetail.getType());
		
		if (cobolFieldValue.isLowValues()) {
			return null;
		}
		if (cobolFieldValue.isHighValues()) {
			return null;
		}
		
		// TODO TYPE - insérer l'information de type dans EntityFieldMapper
		// prendre en compte le type Java désiré plutôt que la détermination par le type Cobol
		// (on pourrait avoir des définitions Cobol texte avec un type effectif java numérique.
		if (type.isNumeric()) {
			if (cobolFieldValue.isSpaces()) {
				return null;
			} else if (fieldDetail.getDecimal() != 0) {
				return cobolFieldValue.asBigDecimal();
			} else {
				return cobolFieldValue.asInt();
			}
		} else if (type instanceof TypeChar) {
			return cobolFieldValue.asString();
		} else if (cobolFieldValue.isBinary()) {
			throw new IllegalStateException(
					String.format("Pas de type Java associé à %s (binary)",
					cobolFieldValue.getFieldDetail().getLookupName()));
		} else {
			throw new IllegalStateException(
					String.format("Pas de type Java associé à %s (inconnu)",
					cobolFieldValue.getFieldDetail().getLookupName()));
		}
	}

	@Override
	public LineResult doInsert(AbstractLine line) {
		return doInsert(line, null);
	}

	@Override
	public void doImport(Supplier<AbstractLine> lineProvider) {
		AbstractLine line;
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		try {
			int count = 0;
			while ((line = lineProvider.get()) != null) {
				try {
					count++;
					doInsert(line, entityManager);
				} catch (RuntimeException e) {
					if (entityManager.getTransaction().isActive()) {
						entityManager.getTransaction().rollback();
					}
					entityManager.close();
					throw new IllegalStateException(String.format("Erreur sur la ligne %d (1-based)", count), e);
				}
			}
		} finally {
			if (entityManager.getTransaction().isActive()) {
				entityManager.flush();
				entityManager.getTransaction().commit();
			}
			entityManager.close();
		}
	}

	public LineResult doInsert(AbstractLine line, EntityManager externalEntityManager) {
		try {
			@SuppressWarnings("deprecation")
			T entity = targetType.newInstance(); // NOSONAR
			copyToEntity(line, entity);
			doWithEntityManager(e -> e.persist(entity), false, externalEntityManager);
			return copyToLine(entity, getRecordKey(), line);
		} catch (Exception e) {
			throw new IllegalStateException(e);	
		}
	}

	@Override
	public LineResult doDelete(Line record) {
		return this.doReturnWithEntityManager(e -> {
			T entity = findEntity(e, mapKeyToJava(getRecordKey(), record));
			if (entity != null) {
				e.remove(entity);
				return LineResult.fromId(
						entity.getRecordNumber(),
						getJavaKeyValue(entity, getRecordKey()),
						getJavaKeyValue(entity, getRecordKey()), getRecordKey());
			} else {
				return LineResult.notFound();
			}
		}, false);
	}

	@Override
	public LineResult doUpdate(Line record) {
		return this.doReturnWithEntityManager(e -> {
			T entity = findEntity(e, mapKeyToJava(getRecordKey(), record));
			if (entity != null) {
				return copyToEntity(record, entity);
			} else {
				return LineResult.notFound();
			}
		}, false);
	}

	@Override
	public LineResult doRead(KeyIdentifier keyIdentifier, Line record) {
		final KeyIdentifier effectiveKeyIdentifier = ! keyIdentifier.isEmpty() ?
				keyIdentifier : KeyIdentifier.fromCommand(-1, getRecordKey());
		final String keyName = mapKeyToKeyName(effectiveKeyIdentifier);
		return this.doReturnWithEntityManager(e -> {
			T entity = findEntity(e, mapKeyToJava(keyName, record));
			if (entity != null) {
				return doLoad(keyName, entity);
			} else {
				return LineResult.notFound();
			}
		}, true);
	}

	public LineResult doRead(String keyName, List<Object> javaKeyValue) {
		return this.doReturnWithEntityManager(e -> {
			T entity = findEntity(e, javaKeyValue);
			if (entity != null) {
				return doLoad(keyName, entity);
			} else {
				return LineResult.notFound();
			}
		}, true);
	}

	private T findEntity(EntityManager e, List<Object> keyValue) {
		T entity;
		try {
			// écriture de la clause WHERE avec les différents attributs composant la clé primaire (recordKey)
			List<String> cobolFields = compositeKeys.get(getRecordKey());
			if (keyValue.size() != cobolFields.size()) {
				throw new IllegalStateException(
						String.format("Valeur de clé non cohérente (fields: %d) avec la définition de clé (%s - fields: %d)",
						keyValue.size(), getRecordKey(), cobolFields.size()));
			}
			Map<String, Object> whereParameters = new HashMap<>();
			List<String> whereFragments = Lists.newArrayList();
			for (String cobolField : cobolFields) {
				String attributeName = keys.get(cobolField).getAttributeName();
				whereFragments.add(String.format("%s = :%s", attributeName, attributeName));
				whereParameters.put(attributeName, keyValue.get(cobolFields.indexOf(cobolField)));
			}
			
			// insertion de la clause WHERE dans la requête de récupération
			String entityName = getEntityName();
			String query = String.format("FROM %s e WHERE %s",
					entityName, String.join(" AND ", whereFragments));
			TypedQuery<T> typedQuery = e.createQuery(query, targetType);
			injectParameters(whereParameters, typedQuery);
			entity = typedQuery.getSingleResult();
		} catch (NoResultException e2) {
			entity = null;
		}
		return entity;
	}

	private void injectParameters(Map<String, Object> whereParameters, TypedQuery<T> typedQuery) {
		for (Entry<String, Object> parameter : whereParameters.entrySet()) {
			// TODO TYPE - si traitement dans mapKeyToJava, ce transtypage est inutile
			if (parameter.getValue() instanceof Integer && typedQuery.getParameter(parameter.getKey()).getParameterType().equals(Long.class)) {
				typedQuery.setParameter(parameter.getKey(), ((Integer) parameter.getValue()).longValue());
			} else if (parameter.getValue() instanceof Integer && typedQuery.getParameter(parameter.getKey()).getParameterType().equals(Date.class)) {
				Date date = dateSSAAMMJJToDate((Integer) parameter.getValue());
				typedQuery.setParameter(parameter.getKey(), date);
			} else {
				typedQuery.setParameter(parameter.getKey(), parameter.getValue());
			}
		}
	}

	@Override
	public LineResult doReadContextual(CommandReadDirection direction) {
		return doReadContextual(direction, null, null, null);
	}

	@Override
	public LineResult doReadContextual(CommandReadDirection direction, Long recordNumber,
			Line record, Integer cacheCount) {
		// recherche contextuelle
		if (direction == null) {
			direction = CommandReadDirection.NEXT;
		}
		
		String lastKeyName;
		List<Object> lastKeyValue;
		Long lastRecordNumber;
		FileContext fileContext = FileContextHolder.getCurrentFileContext();
		// cas où on fait un read next -> eof -> previous OU previous -> eof -> next
		// dans ce cas le contexte indique un recordNumber == null, un lastCommand READ et un lastDirection non null
		// -> il faut exploiter le previousRecordNumber pour trouver le résultat
		boolean readNextEofPrevious = false;
		
		// pour une lecture contextuelle, la clé est issue du contexte
		lastKeyName = fileContext.getKeyName();
		if (lastKeyName == null) {
			lastKeyName = getRecordKey();
		}
		
		if (recordNumber != null && recordNumber != 0 && ! DataServerCommand.READ.equals(fileContext.getLastPositionCommand())) {
			throw new IllegalStateException("Chargement par paquet indiquant une clé alors que la dernière commande n'est pas un READ");
		} else if (recordNumber != null && recordNumber != 0) {
			// Cas du parcours avec cache, nécessiter de recaler
			lastKeyValue = mapKeyToJava(lastKeyName, record);
			lastRecordNumber = recordNumber;
		} else if (fileContext.getPreviousRecordNumber() != null // l'avant dernier résultat était valide
				&& fileContext.getRecordNumber() == null // le résultat précédent n'a pas été trouvé
				&& DataServerCommand.READ.equals(fileContext.getLastPositionCommand()) // la commande était read
				&& fileContext.getLastDirection() != null // c'était un read next/previous
				&& ! fileContext.getLastDirection().equals(direction)) { // et la direction est opposée à la direction présente
			// cas du read next -> eof -> previous OU read previous -> eof -> read next
			// on retourne le résultat précédent
			readNextEofPrevious = true;
			lastKeyValue = fileContext.getPreviousKeyValue();
			lastRecordNumber = fileContext.getPreviousRecordNumber();
		} else {
			// Cas du parcours classique, informations tirées des informations d'état côté serveur
			lastKeyValue = fileContext.getKeyValue();
			lastRecordNumber = fileContext.getRecordNumber();
		}
		
		// open : on traite les cas de sortie (previous ou fichier vide) puis on fait un start implicite
		if (DataServerCommand.OPEN.equals(fileContext.getLastPositionCommand())) {
			// recherche sans position existante
			if (CommandReadDirection.NEXT.equals(direction)) {
				LineResult keyResult = doStartWithJavaKeys(null, null, null, null);
				if (! keyResult.isFound()) {
					return LineResult.notFound();
				} else {
					// set position and perform a standard read
					lastKeyName = keyResult.getKeyName();
					lastKeyValue = keyResult.getKey();
					lastRecordNumber = keyResult.getRecordNumber();
				}
			} else {
				// EOF
				return LineResult.notFound();
			}
		}
		
		// si START, OPEN ou next->eof->prev ou prev->eof->next, la ligne courante est incluse dans le résultat
		boolean includeCurrent = readNextEofPrevious
				|| DataServerCommand.START.equals(fileContext.getLastPositionCommand())
				|| DataServerCommand.OPEN.equals(fileContext.getLastPositionCommand());
		Integer limit = cacheCount == null ? 1 : cacheCount;
		return doRead(lastKeyName, lastKeyValue, lastRecordNumber, direction, includeCurrent, limit);
	}

	private LineResult doRead(String lastKeyName, List<Object> lastKeyValue, Long lastRecordNumber,
			CommandReadDirection direction, boolean includeCurrent, int limit) {
		String query;
		Pair<String, String> operatorText = directionToOperator(direction);
		String orderDescOrAsc = directionToOrder(direction);
		final Map<String, Object> whereParameters = Maps.newHashMap();
		query = buildQuery(lastKeyName, lastKeyValue, lastRecordNumber,
				operatorText.getValue1(), operatorText.getValue0(), includeCurrent,
				orderDescOrAsc, whereParameters);
		final String myQuery = query;
		final String finalLastKeyName = lastKeyName;
		// TODO factoriser la lambda
		if (limit == 1) {
			return this.doReturnWithEntityManager(e -> {
				TypedQuery<T> typedQuery = e.createQuery(myQuery, targetType);
				injectParameters(whereParameters, typedQuery);
				typedQuery.setFirstResult(0);
				typedQuery.setMaxResults(1);
				try {
					T entity = typedQuery.getSingleResult();
					return doLoad(finalLastKeyName, entity);
				} catch (NoResultException e1) {
					return LineResult.notFound(lastKeyValue, lastKeyName, lastRecordNumber);
				}
			}, false);
		} else {
			return this.doReturnWithEntityManager(e -> {
				TypedQuery<T> typedQuery = e.createQuery(myQuery, targetType);
				injectParameters(whereParameters, typedQuery);
				typedQuery.setFirstResult(0);
				typedQuery.setMaxResults(limit);
				List<T> entities = typedQuery.getResultList();
				return doLoadList(finalLastKeyName, lastKeyValue, lastKeyName, lastRecordNumber, entities);
			}, false);
		}
	}

	/**
	 * ENHANCEMENT: utiliser un type custom
	 */
	protected Pair<String, String> directionToOperator(CommandReadDirection direction) {
		switch (direction) {
		case NEXT:
			return Pair.with(">", ">=");
		case PREVIOUS:
			return Pair.with("<", "<=");
		default:
			throw new IllegalStateException();
		}
	}

	protected String directionToOrder(CommandReadDirection direction) {
		String orderDescOrAsc;
		switch (direction) {
		case NEXT:
			orderDescOrAsc = "ASC";
			break;
		case PREVIOUS:
			orderDescOrAsc = "DESC";
			break;
		default:
			throw new IllegalStateException();
		}
		return orderDescOrAsc;
	}

	@Override
	public LineResult doStart(KeyIdentifier keyIdentifier, Line record, CommandKeyOperator operator) {
		final KeyIdentifier effectiveKeyIdentifier = ! keyIdentifier.isEmpty() ?
				keyIdentifier : KeyIdentifier.fromCommand(-1, getRecordKey());
		String keyName = mapKeyToKeyName(effectiveKeyIdentifier);
		List<Object> keyValueObject = mapKeyToJava(keyName, record);
		return doStartWithJavaKeys(keyName, keyValueObject, null, operator);
	}

	@Override
	public void extractAsText() throws IOException {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		AbstractLineWriter writer = textBuilder.newWriter(String.format("/home/lalmeras/%s-%s.out",
				getEntityName(), new SimpleDateFormat("yyyyMMddhhmmss").format(new Date())));
		try {
			TypedQuery<T> query = entityManager.createQuery(
					String.format("SELECT m FROM %1$s m ORDER BY m.%2$s ASC", getEntityName(), FIELD_DB_RECORD_NUMBER),
					getTargetType()
			);
			int index = 0;
			int count = 1000;
			query.setFirstResult(index);
			query.setMaxResults(count);
			List<T> entities = query.getResultList();
			while (!entities.isEmpty()) {
				for (T entity : entities) {
					AbstractLine line = new Line(getIOBuilder().getLayout());
					LineResult result = copyToLine(entity, getRecordKey(), line);
					writer.write(result.getLine().getValue1());
				}
				index = index + entities.size();
				query.setFirstResult(index).setMaxResults(count);
				entities = query.getResultList();
			}
		} catch (RuntimeException e) {
			logger.warn("Erreur d'extraction", e);
		} finally {
			entityManager.close();
			writer.close();
		}
	}

	protected LineResult doStartWithJavaKeys(String keyName, List<Object> keyValue, Long lastRecordNumber,
			CommandKeyOperator operator) {
		String query = null;
		final String finalKeyName;
		if (keyName == null) {
			keyName = getRecordKey();
		}
		finalKeyName = keyName;
		if (operator == null) {
			operator = CommandKeyOperator.EQUAL;
		}
		String operatorText = operator.getOperator();
		final String orderDescOrAsc;
		switch (operator) {
		case EQUAL:
		case GREATER:
		case GREATER_OR_EQUAL:
			orderDescOrAsc = "ASC";
			break;
		case LESS:
		case LESS_OR_EQUAL:
			orderDescOrAsc = "DESC";
			break;
		default:
			throw new IllegalStateException();
		
		}
		Map<String, Object> whereParameters = Maps.newHashMap();
		
		query = buildQuery(finalKeyName, keyValue, lastRecordNumber,
				operatorText, null, true, orderDescOrAsc, whereParameters);
		final String finalQuery = query;
		return this.doReturnWithEntityManager(e -> {
			TypedQuery<T> typedQuery = e.createQuery(finalQuery, getTargetType());
			injectParameters(whereParameters, typedQuery);
			typedQuery.setFirstResult(0);
			typedQuery.setMaxResults(1);
			try {
				T entity = typedQuery.getSingleResult();
				List<Object> recordKey = getJavaKeyValue(entity, getRecordKey());
				Long recordNumber = entity.getRecordNumber();
				List<Object> resultKey = getJavaKeyValue(entity, finalKeyName);
				return LineResult.fromId(
						recordNumber,
						recordKey,
						resultKey,
						finalKeyName);
			} catch (NoResultException e1) {
				return LineResult.notFound();
			}
		}, false);
	}

	/**
	 * @param finalKeyName - - clé utilisée pour le parcours ; permet de savoir sur quels champs appliquer les valeurs
	 *   de keyValue
	 * @param keyValue - valeurs de clé pour la position courante
	 * @param recordNumber - position courante pour le recordNumber
	 * @param operatorText - opérateur à utiliser pour le sens de parcours ; n'a pas d'impact si includeCurrent = true
	 * @param strictOperatorText - opérateur strict à utiliser s'il la clé utilisée contient des valeurs dupliquées ;
	 *   dans ce cas operatorText est utilisé pour trouver les résultats généraux, et strictOperatorText pour identifier
	 *   les résultats suivants (clé strictement différente)
	 * @param includeCurrent - indique si le résultat pointé par keyValue doit être compris dans le résultat de la
	 *   requête (c'est le cas pour le premier READ suivant un START)
	 * @param orderDescOrAsc - ordre désiré, en fonction de la direction de parcours
	 * @param whereParameters - argument passé par référence qui permet de peupler les arguments nécessaires à
	 *   l'exécution de la requête
	 * @return
	 */
	private String buildQuery(final String finalKeyName, List<Object> keyValue, Long recordNumber,
			String operatorText, String strictOperatorText, boolean includeCurrent,
			final String orderDescOrAsc, Map<String, Object> whereParameters) {
		if (whereParameters == null || ! whereParameters.isEmpty()) {
			throw new IllegalStateException("whereParameters non initialisé ou non vide");
		}
		String query;
		String whereClause;
		String selectClause;
		String orderClause;
		
		if (keyValue != null && keyValue.size() != compositeKeys.get(finalKeyName).size()) {
			throw new IllegalStateException("Mauvaise taille de clé");
		}
		
		selectClause = "m";
		orderClause =
				compositeKeys.get(finalKeyName).stream()
					.map(i -> String.format("m.%1$s %2$s", keys.get(i).getAttributeName(), orderDescOrAsc))
					.collect(Collectors.joining(","))
				// , recordNumber [asc|desc]
				+ String.format(", %1$s %2$s", FIELD_DB_RECORD_NUMBER, orderDescOrAsc);
		
		// Ecriture de la clause where sous la forme
		// key1 COMPARE_STRICT cur1 OR (key1 = cur1 AND key2 COMPARE_STRICT cur2)
		// OR (key1 = cur1 AND key2 = cur2 AND key3 COMPARE_STRICT cur3)
		// OR (key1 = cur1 AND key2 = cur2 AND = cur3 AND recordNumber > curR)
		
		// cas particulier
		// - pas de valeur de clé, pas de condition ; récupération basée sur l'ordre
		// - pas de valeur pour keyN ; pas de condition à partir de keyN
		// - pas de recordNumber - pas de condition sur le recordNumber
		List<List<String>> whereClauseList = Lists.newArrayList(); // conditions séparées par des OR
		if (keyValue != null) {
			// Liste des clés Cobol + recordNumber
			List<String> keyList = Lists.newArrayList(compositeKeys.get(finalKeyName));
			if (recordNumber != null) {
				keyList.add(FIELD_DB_RECORD_NUMBER);
			}
			// List contenant [[key1], [key1, key2], [key1, key2, key3], [key1, key2, key3, recordNumber]]
			List<List<String>> keyListsList = Lists.newArrayList();
			for (String keyField : keyList) {
				// pour chaque clé, on fait la liste qui s'arrête à la clé
				List<String> currentKeyList = Lists.newArrayList();
				
				// si pas de valeur courante pour un élément, on arrête d'accumuler les champs
				if (FIELD_DB_RECORD_NUMBER.equals(keyField)) {
					if (recordNumber == null) {
						break;
					}
					whereParameters.put(FIELD_DB_RECORD_NUMBER, recordNumber);
				} else {
					Object value = keyValue.get(keyList.indexOf(keyField));
					if (value == null) {
						break;
					}
					whereParameters.put(keys.get(keyField).getAttributeName(), value);
				}
				for (String key2 : keyList) {
					currentKeyList.add(key2);
					if (key2.equals(keyField)) {
						break;
					}
				}
				keyListsList.add(currentKeyList);
			}
			
			for (List<String> currentKeyList : keyListsList) {
				// écriture key1 = cur1 AND key2 = cur2 AND key3 COMPARE_STRICT cur3
				List<String> keyConditions = Lists.newArrayList();
				ListIterator<String> fieldIterator = currentKeyList.listIterator();
				while (fieldIterator.hasNext()) {
					String keyField = fieldIterator.next();
					boolean last = ! fieldIterator.hasNext();
					String operator;
					if (last) {
						operator = strictOperatorText != null && ! includeCurrent ? strictOperatorText : operatorText;
					} else {
						operator = "=";
					}
					String attributeName;
					if (FIELD_DB_RECORD_NUMBER.equals(keyField)) {
						attributeName = FIELD_DB_RECORD_NUMBER;
					} else {
						attributeName = keys.get(keyField).getAttributeName();
					}
					keyConditions.add(String.format("m.%1$s %2$s :%3$s",
							attributeName,
							operator,
							attributeName));
				}
				whereClauseList.add(keyConditions);
			}
		}
		
		if (whereClauseList.isEmpty()) {
			whereClause = "";
		} else {
			whereClause = "WHERE " + whereClauseList.stream().map(
					i -> i.stream().collect(Collectors.joining(" AND ", "(", ")"))
					).collect(Collectors.joining(" OR "));
		}
		query = String.format("SELECT %1$s FROM %2$s m %3$s ORDER BY %4$s",
				selectClause,
				getEntityName(),
				whereClause,
				orderClause);
		sqlLogger.info(query);
		return query;
	}

	protected LineResult doLoad(String fieldName, T entity) {
		try {
			AbstractLine line = new Line(getIOBuilder().getLayout());
			return copyToLine(entity, fieldName, line);
		} catch (IOException e) {
			throw new IllegalStateException("jrecord mapping error", e);
		}
	}

	/**
	 * Les variables last* sont nécessaires pour que le LineResult généré contienne la mise à jour de la position
	 * précédente dans la table. Nécessaire car si un cache est utilisé, la position actuelle n'est pas dans le
	 * FileContext (puisque avec le cache Cobol a déplacé de manière autonome son curseur).
	 */
	protected LineResult doLoadList(String fieldName, List<Object> lastKeyValue, String lastKeyName, Long lastRecordNumber,
			List<T> entities) {
		try {
			List<Pair<Long, AbstractLine>> results = new ArrayList<>();
			for (T entity : entities) {
				AbstractLine line = new Line(getIOBuilder().getLayout());
				LineResult result = copyToLine(entity, fieldName, line);
				results.add(result.getLine());
			}
			
			List<Object> key = null;
			List<Object> recordKey = null;
			if (! results.isEmpty()) {
				T entity = entities.get(0);
				key = getJavaKeyValue(entity, fieldName);
				recordKey = getJavaKeyValue(entity, getRecordKey());
				return LineResult.fromResults(entity.getRecordNumber(), key, recordKey, fieldName, results);
			} else {
				return LineResult.notFound(lastKeyValue, lastKeyName, lastRecordNumber);
			}
		} catch (IOException e) {
			throw new IllegalStateException("jrecord mapping error", e);
		}
	}

	protected String dateToSSAAMMJJ(Date date) {
		if (date != null) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			return sdf.format(date);
		} else {
			return "00000000";
		}
	}

	protected Date dateSSAAMMJJHHmmToDate(IFieldValue datePart, IFieldValue timePart) {
		if (datePart.isLowValues()) {
			return null;
		} else if ("0".equals(datePart.toString())) {
			return null;
		} else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
			Integer hours = 0;
			Integer minutes = 0;
			if (! timePart.isLowValues()) {
				BigDecimal value = timePart.asBigDecimal();
				hours = value.round(new MathContext(0, RoundingMode.DOWN)).intValue();
				minutes = value.subtract(BigDecimal.valueOf(hours)).multiply(BigDecimal.valueOf(100)).intValue();
			}
			String dateString = String.format("%s%02d%02d", datePart.toString(), hours, minutes);
			try {
				return sdf.parse(dateString);
			} catch (ParseException e) {
				throw new IllegalStateException(String.format("Fail to parse %s", dateString));
			}
		}
	}

	protected Time decimalHHmmToTime(IFieldValue timePart) {
		// ENHANCEMENT: à remplacer par un parsing manuel (plus facile à lire/maintenir)
		try {
			BigDecimal bigDecimal = timePart.asBigDecimal();
			DecimalFormat df = new DecimalFormat("##.##");
			df.setMaximumFractionDigits(2);
			df.setMaximumIntegerDigits(2);
			df.setMinimumIntegerDigits(2);
			df.setMinimumFractionDigits(2);
			// écriture avec les 0 non significatifs
			String value = df.format(bigDecimal);
			// remplacement du séparateur décimal
			value = value.replaceAll("[^0-9]", ":");
			// ajout des secondes
			value += ":00";
			return Time.valueOf(value);
		} catch (RuntimeException e) {
			throw new IllegalStateException(String.format("Fail to parse %s", timePart.asString()));
		}
	}

	protected Date dateSSAAMMJJToDate(IFieldValue datePart) {
		if (datePart.isLowValues()) {
			return null;
		} else if ("0".equals(datePart.asString())) {
			return null;
		} else {
			Integer dateAsInt = datePart.asInt();
			return dateSSAAMMJJToDate(dateAsInt);
		}
	}

	private Date dateSSAAMMJJToDate(Integer dateAsInt) {
		String dateStr = String.format("%08d", dateAsInt);
//			MXART AFI 0053M -> 00001018
//			On répertorie les erreurs
//			if (dateStr.startsWith("0000")) {
//				return null;
//			}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		try {
			return sdf.parse(dateStr);
		} catch (ParseException e) {
			throw new IllegalStateException(String.format("Fail to parse %s", dateStr));
		}
	}

	protected BigDecimal toBigDecimal(IFieldValue value) {
		if (value.asString().isEmpty()) {
			logger.info("Empty value found for BigDecimal in {}", value.getFieldDetail().getName());
			return null;
		} else {
			return value.asBigDecimal();
		}
	}

	protected Boolean toBoolean(IFieldValue value) {
		// value.asBoolean() n'est pas implémenté !
		return value.asInt() == 1;
	}

	protected BigDecimal dateToHHMMBigDecimal(Date date) {
		if (date != null) {
			SimpleDateFormat sdf = new SimpleDateFormat("HHmm");
			return BigDecimal.valueOf(Long.valueOf(sdf.format(date)), 2);
		} else {
			return BigDecimal.valueOf(0l, 2);
		}
	}

	protected <J> void extractCobolField(String identifier, String cobolFieldName, String javaFieldName,
			AbstractLine line, Consumer<J> consumer, Function<IFieldValue, J> supplier) {
		extractCobolField(identifier,
				Collections.singletonList(cobolFieldName), Collections.singletonList(javaFieldName),
				line,
				Collections.singletonList(line.getFieldValue(cobolFieldName).asString()),
				() -> consumer.accept(supplier.apply(line.getFieldValue(cobolFieldName))) );
	}

	protected void extractCobolField(String identifier, List<String> cobolFieldNames, List<String> javaFieldNames,
			AbstractLine line, List<String> values, Runnable runnable) {
		try {
			runnable.run();
		} catch (RuntimeException e) {
			String cobolFields = cobolFieldNames.stream().map(f -> String.format("%s[%d:%d]",
					f, line.getFieldValue(f).getFieldDetail().getPos(), line.getFieldValue(f).getFieldDetail().getLen()
			)).collect(Collectors.joining(","));
			logger.warn("{}: {} cannot be extracted in {} from values <{}>",
					identifier,
					cobolFields,
					String.join(",", javaFieldNames),
					String.join(",", values),
					e);
		}
	}

	protected void booleanCobolToJava(IFieldValue fieldValue, Consumer<Boolean> setter) {
		Integer value = fieldValue.asInt();
		if (value == 1) {
			setter.accept(true);
		} else if (value == 0) {
			setter.accept(false);
		} else {
			throw new IllegalStateException(String.format("Valeur %s invalide pour le champ %d",
					fieldValue.getFieldDetail().getName(), value));
		}
	}

	protected void booleanJavaToCobol(IFieldValue fieldValue, BooleanSupplier getter) {
		Boolean value = getter.getAsBoolean();
		fieldValue.set(value != null && value ? 1 : 0);
	}

	protected void integerCobolToJava(IFieldValue fieldValue, IntConsumer setter) {
		try {
			setter.accept(fieldValue.asInt());
		} catch (NumberFormatException e) {
			String strValue = fieldValue.asString();
			// TODO: fait pour MXHISVTE/TCO-MHIV
			strValue = strValue.replace(">", "0");
			// TODO: fait pour MXART/UAC-MART
			strValue = strValue.replace("=", "0");
			setter.accept(Integer.valueOf(strValue));
		}
	}

	protected void integerJavaToCobol(IFieldValue fieldValue, IntSupplier getter) {
		fieldValue.set(getter.getAsInt());
	}

	protected void longCobolToJava(IFieldValue fieldValue, LongConsumer setter) {
		try {
			setter.accept(fieldValue.asLong());
		} catch (NumberFormatException e) {
			String strValue = fieldValue.asString();
			// TODO: fait pour MXHISVTE/MAT-MHIV
			strValue = strValue.replaceAll("#", "0");
			// TODO: fait pour MXHISVTE/CLI-MHIV (redefines)
			strValue = strValue.replaceAll(" ", "0");
			// TODO: fait pour MXCHACLI/BSMS-MCHC (*)
			strValue = strValue.replaceAll(";", "0");
			// TODO: fait pour MXCHACLI/BSMS-MCHC (*)
			strValue = strValue.replaceAll("=", "0");
			try {
				setter.accept(Long.valueOf(strValue));
			} catch (NumberFormatException e2) {
				throw new IllegalStateException(String.format("La valeur %s n'a pas pu être transformée en Long", fieldValue.asString()));
			}
		}
	}

	protected void longJavaToCobol(IFieldValue fieldValue, LongSupplier getter) {
		fieldValue.set(getter.getAsLong());
	}

	protected void stringCobolToJava(IFieldValue fieldValue, Consumer<String> setter) {
		setter.accept(fieldValue.asString());
	}

	protected void stringJavaToCobol(IFieldValue fieldValue, Supplier<String> getter) {
		fieldValue.set(getter.get());
	}

	protected void dateCobolToJava(IFieldValue fieldValue, Consumer<Date> setter) {
		setter.accept(dateSSAAMMJJToDate(fieldValue));
	}

	protected void dateJavaToCobol(IFieldValue fieldValue, Supplier<Date> getter) {
		fieldValue.set(dateToSSAAMMJJ(getter.get()));
	}

	protected void dateTimeCobolToJava(IFieldValue dateFieldValue, IFieldValue timeFieldValue, Consumer<Date> setter) {
		setter.accept(dateSSAAMMJJHHmmToDate(dateFieldValue, timeFieldValue));
	}

	protected void dateTimeJavaToCobol(IFieldValue dateFieldValue, IFieldValue timeFieldValue, Supplier<Date> getter) {
		dateFieldValue.set(dateToSSAAMMJJ(getter.get()));
		timeFieldValue.set(dateToHHMMBigDecimal(getter.get()));
	}

	protected void bigDecimalCobolToJava(IFieldValue fieldValue, Consumer<BigDecimal> setter) {
		setter.accept(toBigDecimal(fieldValue));
	}

	protected void bigDecimalJavaToCobol(IFieldValue fieldValue, Supplier<BigDecimal> getter) {
		fieldValue.set(getter.get());
	}

	protected String getEntityName() {
		return targetType.getSimpleName();
	}

	protected Class<T> getTargetType() {
		return targetType;
	}

	@Override
	public String keyToString(KeyIdentifier keyIdentifier, Line record) {
		if (keyIdentifier.isEmpty()) {
			return "<#null#>";
		}
		return keyToString(mapKeyToJava(mapKeyToKeyName(keyIdentifier), record));
	}

	@Override
	public String recordKeyToString(Line record) {
		return keyToString(KeyIdentifier.fromCommand(-1, getRecordKey()), record);
	}

	private String keyToString(List<Object> key) {
		return key.stream().map(i -> i != null ? i.toString() : "#null#").collect(Collectors.joining(", ", "<", ">"));
	}

	protected LineResult copyToEntity(AbstractLine line, T entity) {
		mapCobolToJava(line, entity);
		if (jsonLogger.isDebugEnabled()) {
			try {
				jsonLogger.debug("JSON: {}", new ObjectMapper().writeValueAsString(entity));
			} catch (JsonProcessingException e) {
				jsonLogger.warn("Ecriture JSON impossible", e);
			}
		}
		
		return LineResult.fromResult(
				entity.getRecordNumber(),
				getJavaKeyValue(entity, getRecordKey()),
				getJavaKeyValue(entity, getRecordKey()), getRecordKey(), line);
	}

	protected LineResult copyToLine(T entity, String fieldName, AbstractLine line) {
		mapJavaToCobol(entity, line);
		
		return LineResult.fromResult(entity.getRecordNumber(),
				getJavaKeyValue(entity, fieldName),
				getJavaKeyValue(entity, getRecordKey()), fieldName, line);
	}

	protected final List<Object> getJavaKeyValue(T entity, String fieldName) {
		List<String> fieldKeys = compositeKeys.get(fieldName);
		ImmutableList.Builder<Object> builder = ImmutableList.builder();
		for (String fieldKey : fieldKeys) {
			IEntityFieldMapper<T> mapper = keys.get(fieldKey);
			builder.add(mapper.getGetter().apply(entity));
		}
		return builder.build();
	}

	protected final String getRecordKey() {
		return recordKeyName;
	}

	protected abstract void mapCobolToJava(AbstractLine line, T entity);

	protected abstract void mapJavaToCobol(T entity, AbstractLine line);

}
