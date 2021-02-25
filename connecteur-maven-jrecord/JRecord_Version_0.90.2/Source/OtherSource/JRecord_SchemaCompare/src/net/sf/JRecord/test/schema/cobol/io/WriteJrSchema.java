package net.sf.JRecord.test.schema.cobol.io;
 /*
  *   Example program for JR_Schema_Test.cbl
  *   This class uses the JRecord project (https://sourceforge.net/projects/jrecord/)
  * -------------------------------------------------------------------
  *        
  * *------------- Keep this notice in your final code ---------------
  * *   This code was generated by JRecord projects CodeGen program
  * *            on the: 11 Jul 2016 9:40:41 
  * *     from Copybook: JR_Schema_Test.cbl
  * *          Template: lineWrapper
  * *             Split: 01   
  * * File Organization: 0   
  * *              Font: 
  * *   
  * *    CodeGen Author: Bruce Martin
  * *-----------------------------------------------------------------
  *
  *   This class should be used as an example of reading/writing files
  *   using JRecord. You will need to modify the code to meet your
  *   needs. The Author of CodeGen (Bruce Martin) program takes no 
  *   responsibility for the accuracy of the generated code. 
  *
  *   Good Luck
  *              Bruce Martin
  *
  * ------------------------------------------------------------------
  * v01  CodeGen        11 Jul 2016  Initial version
  *     (Bruce Martin)
  *
  * ------------------------------------------------------------------ 
  */


import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

import net.sf.JRecord.JRecordInterface1;
import net.sf.JRecord.Details.AbstractLine;
import net.sf.JRecord.Details.LayoutDetail;
import net.sf.JRecord.Details.RecordDetail;
import net.sf.JRecord.Common.Constants;
import net.sf.JRecord.Common.IFieldDetail;
import net.sf.JRecord.External.CopybookLoader;
import net.sf.JRecord.def.IO.builders.ICobolIOBuilder;
import net.sf.JRecord.IO.AbstractLineWriter;
import net.sf.JRecord.Numeric.ConversionManager;
import net.sf.JRecord.Numeric.Convert;
import net.sf.JRecord.test.schema.cobol.gen.data.LineCopybookRecordJR;
import net.sf.JRecord.test.schema.cobol.gen.data.LineDialectRecordJR;
import net.sf.JRecord.test.schema.cobol.gen.data.LineFieldRecordJR;
import net.sf.JRecord.test.schema.cobol.gen.data.LineSchemaRecordRecordJR;


/**
 * Purpose:   Write the contents of multiple LayoutDetails to a file.
 *          The CompareCopybookDetails program will compare this files
 *          Contents against the Layout Details it generates.
 *            This is to support testing of JRecord for multiple 
 *          Cobol Copybooks
 *            
 * Author:   Bruce Martin
 * 
 * Copybook: JR_Schema_Test.cbl (Cobol)         
 */
public final class WriteJrSchema {


    private String copybookName   = "JR_Schema_Test.cbl";

    private LineCopybookRecordJR lineCopybookRecordJR = new LineCopybookRecordJR();
    private LineDialectRecordJR lineDialectRecordJR = new LineDialectRecordJR();
    private LineSchemaRecordRecordJR lineSchemaRecordRecordJR = new LineSchemaRecordRecordJR();
    private LineFieldRecordJR lineFieldRecordJR = new LineFieldRecordJR();

    private ICobolIOBuilder iob;
    private AbstractLineWriter writer;

    /**
     * Example of LineReader  classes
     * @throws IOException 
     * @throws FileNotFoundException 
     */
    public WriteJrSchema(String outputFileName) throws FileNotFoundException, IOException {
        super();

       
       iob = JRecordInterface1.COBOL   .newIOBuilder(this.getClass().getResource(copybookName).openStream(), "JR_Schema_Test")
                                           .setFileOrganization(Constants.IO_TEXT_LINE)
                                           .setSplitCopybook(CopybookLoader.SPLIT_01_LEVEL)
                                       ;  

       if (! outputFileName.endsWith(".gz")) {
    	   outputFileName = outputFileName + ".gz";
       }
       writer = iob.newWriter(new GZIPOutputStream(new FileOutputStream(outputFileName)));
    }

    public void writeCopybookHeaderRecord(String copybookname, String doCompare) throws IOException {
        AbstractLine line = iob.newLine();
        lineCopybookRecordJR.setLine(line); 

        lineCopybookRecordJR.setRecordType((short)10); 
        lineCopybookRecordJR.setCopybookName(copybookname);
        lineCopybookRecordJR.setDoCompare(doCompare);

        writer.write(line);
    }
    
    public void writeSchema(int dialect, LayoutDetail l) throws IOException {
    	writeDialectRecord(iob, dialect, l);
    }
    public void close() throws IOException {
    	writer.close();
    }

    private void writeDialectRecord(ICobolIOBuilder iob, int dialect, LayoutDetail data) throws IOException {
        AbstractLine line = iob.newLine();
        ConversionManager dialectMgr = ConversionManager.getInstance();
        
        Convert dialectDef = dialectMgr.getConverter4code(dialect);
        String dialectName = dialectDef == null ? "" : dialectDef.getName();

        lineDialectRecordJR.setLine(line);

        lineDialectRecordJR.setRecordType((short) 20); 
        lineDialectRecordJR.setDialectCode((short) dialect);
		lineDialectRecordJR.setDialectName(dialectName);
        lineDialectRecordJR.setFontName(data.getFontName());
        lineDialectRecordJR.setHasBinaryFields(toString(data.hasBinaryField())); 
        lineDialectRecordJR.setIsBinary(toString(data.isBinary())); 
        lineDialectRecordJR.setFileStructure((short)data.getFileStructure()); 

        writer.write(line);
        
        for (int i = 0; i < data.getRecordCount(); i++) {
        	writeSchemaRecordRecord(iob, data.getRecord(i));
        }
    }

    private void writeSchemaRecordRecord(ICobolIOBuilder iob, RecordDetail data) throws IOException {
        AbstractLine line = iob.newLine();
        lineSchemaRecordRecordJR.setLine(line);

        lineSchemaRecordRecordJR.setRecordType((short)30);
        lineSchemaRecordRecordJR.setRecordName(data.getRecordName());
        lineSchemaRecordRecordJR.setRecordSchemaType((short)data.getRecordType());
        lineSchemaRecordRecordJR.setRecordStyle((short)data.getRecordStyle());
        lineSchemaRecordRecordJR.setFieldCount((short)data.getFieldCount());


        writer.write(line);
        
        for (int i = 0; i < data.getFieldCount(); i++) {
        	writer.write(createFieldRecord(iob, data.getField(i)));
        }
    }

    private AbstractLine createFieldRecord(ICobolIOBuilder iob, IFieldDetail data) throws IOException {
        AbstractLine line = iob.newLine();
        lineFieldRecordJR.setLine(line);

        lineFieldRecordJR.setRecordType((short) 40);
        lineFieldRecordJR.setFieldName(data.getName());
        lineFieldRecordJR.setFieldType((short) data.getType());
        lineFieldRecordJR.setFieldPosition( data.getPos());
        lineFieldRecordJR.setFieldLength(data.getLen());
        lineFieldRecordJR.setDecimal((short) data.getDecimal());


        return line;
    }
    
    private String toString(boolean b) {
    	return b?"Y": "N";
    }
}

