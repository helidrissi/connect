package test.dataserver;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import org.junit.jupiter.api.Test;

import com.google.common.collect.Lists;

import fr.mistral.jrecord.FdFileHelper;
import net.sf.JRecord.Common.IFieldDetail;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;

public class TestFdFile {

	/**
	 * Permet d'obtenir les offset pour tous les champs d'un fichier FD.
	 * Nom du champ: index de départ (1-based), index de fin (exclu) (longueur)
	 * @throws IOException
	 */
	@Test
	public void printFileDefinition() throws IOException {
		String path = "mx/fd/MXCHACLI.fd";
		String basename = "MXCHACLI";
		ICobolIOBuilder builder = FdFileHelper.newTextBuilderFromFd(path, basename);
		List<IFieldDetail> details = Lists.newArrayList();
		details.addAll(builder.getLayout().getFieldNameMap().values());
		Collections.sort(details, (a, b) -> Integer.compare(a.getPos(), b.getPos()));
		for (IFieldDetail fieldDetail : details) {
			System.out.println(String.format("%s: %d-%d (%d)",
					fieldDetail.getName(), fieldDetail.getPos(), fieldDetail.getPos() + fieldDetail.getLen(), fieldDetail.getLen()));
		}
		
	}

}
