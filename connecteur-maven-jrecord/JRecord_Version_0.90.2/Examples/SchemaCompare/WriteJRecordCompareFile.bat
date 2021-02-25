rem * Purpose:   Read through all the Cobol copybooks in a directory (cobol_copybooks)
rem *          and Write there Record / Field Details (field-position, field-length
rem *          field-type etc) to a baseline 'Layout' file (JRecordCompare.txt.gz).
rem *            This baseline 'Layout' file (JRecordCompare.txt.gz) is then used 
rem *          by RunJRecordCompare.bat to check future versions of JRecord.
rem *
rem * Author:   Bruce Martin
rem *


java.exe -cp JRecordCompare.jar;../../lib/cb2xml.jar;../../lib/JRecord.jar ^
           net.sf.JRecord.test.schema.WriteCopybookCompareFile ^
                     -directory cobol_copybooks/ ^
                     -dialect Mainframe ^
                     -fileStructure Mainframe_VB ^
                     -font cp037 ^
                     -DropCopybookName N ^
                     -output JRecordCompare3.txt.gz 

pause