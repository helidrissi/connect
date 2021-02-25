package fr.mistral.dataserver.context;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

import com.google.common.collect.ImmutableList;

import fr.mistral.dataserver.command.CommandContext;

public class FileContextRegistry {

	private final ConcurrentMap<String, FileContext> contexts;

	public FileContextRegistry() {
		this.contexts = new ConcurrentHashMap<>();
	}

	/**
	 * Stocke le contexte fichier passé en paramètre. Permet de le retrouver lors des requêtes suivantes.
	 * 
	 * @param context le {@link FileContext} qu'on veut stocker
	 * @throws IllegalStateException si le contexte est déjà existant
	 */
	public void storeContext(FileContext context) {
		String key = context.getContextKey();
		if (contexts.containsKey(key)) {
			return;
		}
		contexts.put(key, context);
	}

	/**
	 * Récupère un contexte fichier à partir de la clé définie par le {@link CommandContext}
	 * 
	 * @param context le {@link CommandContext} pour lequel on veut récupérer un contexte existant.
	 * @return null si le contexte est absent.
	 */
	public FileContext getContext(CommandContext context) {
		String key = context.getContextKey();
		return contexts.get(key);
	}

	/**
	 * Supprime un contexte fichier. Usuellement appelé lors d'un CLOSE.
	 * 
	 * @param context le {@link FileContext} à retirer.
	 * @return le contexte supprimé ; null si le context n'a pas été trouvé.
	 */
	public FileContext removeContext(FileContext context) {
		String key = context.getContextKey();
		return contexts.remove(key);
	}

	/**
	 * Liste tous les contextes actuels
	 * 
	 * @return la liste des contextes actuels
	 */
	public List<FileContext> listContexts() {
		return ImmutableList.copyOf(contexts.values());
	}

}
