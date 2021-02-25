#! /bin/sh

## * ----------------------------------------------------------------------------
## * Purpose:   Read through all the Cobol copybooks in a directory (cobol_copybooks)
## *          and compare there Record / Field Details (field-position, field-length
## *          field-type etc) to the equivalent values stored on the
## *          baseline 'Layout' file (JRecordCompare.txt.gz).
## *
## * Author:   Bruce Martin
## *
## * ----------------------------------------------------------------------------


java -cp JRecordCompare.jar:../../lib/cb2xml.jar:../../lib/JRecord.jar \
           net.sf.JRecord.test.schema.DoCompare \
                     -directory cobol_copybooks/ \
                     -dialect Mainframe \
                     -fileStructure Mainframe_VB \
                     -font cp037 \
                     -DropCopybookName N \
                     -input JRecordCompare.txt.gz \
             > JRecord_Compare_Report.txt
