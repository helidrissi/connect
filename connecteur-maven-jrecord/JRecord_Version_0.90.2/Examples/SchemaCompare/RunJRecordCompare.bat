rem * Purpose:   Read through all the Cobol copybooks in a directory (cobol_copybooks)
rem *          and compare there Record / Field Details (field-position, field-length
rem *          field-type etc) to the equivalent values stored on the
rem *          baseline 'Layout' file (JRecordCompare.txt.gz).
rem *
rem * Author:   Bruce Martin
rem *


java.exe -cp JRecordCompare.jar;../../lib/cb2xml.jar;../../lib/JRecord.jar ^
           net.sf.JRecord.test.schema.DoCompare ^
                     -directory cobol_copybooks/ ^
                     -dialect Mainframe ^
                     -fileStructure Mainframe_VB ^
                     -font cp037 ^
                     -DropCopybookName N ^
                     -input JRecordCompare.txt.gz ^
             > JRecord_Compare_Report.txt

pause