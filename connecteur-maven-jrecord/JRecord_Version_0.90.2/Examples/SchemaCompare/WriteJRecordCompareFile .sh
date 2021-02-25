#! /bin/sh

## * -----------------------------------------------------------------------------
## * Purpose:   Read through all the Cobol copybooks in a directory (cobol_copybooks)
## *          and Write there Record / Field Details (field-position, field-length
## *          field-type etc) to a baseline 'Layout' file (JRecordCompare.txt.gz).
## *            This baseline 'Layout' file (JRecordCompare.txt.gz) is then used
## *          by RunJRecordCompare.bat to check future versions of JRecord.
## *
## * Author:   Bruce Martin
## *
## *-----------------------------------------------------------------------------


java -cp JRecordCompare.jar:../../lib/cb2xml.jar:../../lib/JRecord.jar \
           net.sf.JRecord.test.schema.WriteCopybookCompareFile \
                     -directory cobol_copybooks/ \
                     -dialect Mainframe \
                     -fileStructure Mainframe_VB \
                     -font cp037 \
                     -DropCopybookName N \
                     -output JRecordCompare.txt.gz 
