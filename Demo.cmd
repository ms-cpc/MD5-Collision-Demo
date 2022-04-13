@echo off
:: ######################################################
:: VERSION 0.220209
:: SCRIPT: MD5 Hash Collision Demo
:: CREATION DATE: 2017-04-05
:: LAST MODIFIED: 2022-02-09
:: AUTHOR: Mark SOUTHBY
:: EMAIL: mark@southby.ca
:: ######################################################
:: #### Demo created by Mark Southby
:: #### Using Evlize MD5 Collision Demo (Source code provided)
:: #### https://github.com/silentsignal/sheep-wolf/tree/master/evilize
:: #### Can be used and modified without permission.
:: #### Changed Verify Script to Demo MD5 hash collision
TITLE MD5 Hash Collision Demo
CLS
echo Welcome to the MD5 Hash Collision Demo
ECHO We are going to show two files which have the same file size and MD5 hash
ECHO However, these two files opperate differently.
ECHO.
ECHO.
PAUSE
CLS
:: HASH AND VERIFY TOOLS
ECHO Generating MD5 checksum hash...
ECHO.
BIN\md5sum.exe BIN\*MD5Collision.exe
ECHO.
ECHO Showing creation date and file size...
ECHO.
dir BIN\*collision.exe
ECHO.
ECHO.
ECHO.
ECHO NOTICE: Both files have the same Hash and File size.
ECHO.
ECHO Generally, this would be widely accepted that these two files contain the same data.
ECHO.
ECHO.
PAUSE
ECHO.
ECHO Running these two programs show that they are infact different.
ECHO.
ECHO.
PAUSE
CLS
ECHO Running hello_MD5Collision.exe
ECHO.
BIN\hello_MD5Collision.exe
CLS
ECHO Running erase_MD5Collision.exe
ECHO.
BIN\erase_MD5Collision.exe
CLS
ECHO Some people then argue that this proves MD5 is not acceptable
ECHO However, close analysis shows that this is a trick crafted in a lab 
ECHO For the specific purpose of demonstrating hash collision.
ECHO.
ECHO.
PAUSE
BIN\DEMO.JPG
CLS
ECHO A close analysis shows the code / data / contents for BOTH files is identical, except for
ECHO A few bytes. These bytes exploit the math used in the MD5 Algorithm. 
ECHO A closer look shows the 6 bytes that were affected only had the first digit changed.
ECHO.
ECHO.
PAUSE
CLS
ECHO The logic of each program is likely checking one of these bytes for a specific value.
ECHO EG: IF value of byte 0953h = 09, run "Hello", if not, run "erase"
ECHO.
ECHO.
ECHO While some will claim these files are completely different, 
ECHO It is more accurate to state thhey are nearly identical.
ECHO.
ECHO Of the 6144 Bytes, only 6 NIBBLES are different. Just less than a 0.1% difference.
ECHO.
ECHO.
PAUSE
CLS
ECHO Another theorized technique to get the same hash value, is to add specific 
ECHO data to the end of the file in a specific way in order to make it match a 
ECHO specific hash. This would result in a different file size, and a bunch of very obvious 
ECHO "random" data that would look out of place. At the time of this demo, I am not aware of
ECHO this technique being successful.
ECHO.
ECHO.
PAUSE
CLS
ECHO Both of the techniques described would be readily apparent to any forensic investigator.
ECHO In the events where security certificates were forged using Hash Collisions
ECHO The forged certificate had numerous issues and was readily apparent to any human 
ECHO verifying the certificate.
ECHO.
ECHO.
ECHO In conclusion, the use of hashes for the purpose of verifying data integrity 
ECHO is still sufficient using the MD5, and even SHA1 Algorithms.
ECHO.
ECHO.
ECHO Demonstration prepared by Cpl. Mark Southby, 
ECHO Digital Forensic Analysis Team - Technical Analysis Team
ECHO Royal Canadian Mounted Police
ECHO.
ECHO.
PAUSE
CLS
