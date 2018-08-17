rem easy start Cryply wallet with last blockchain by Bubasik
rem https://eternallybored.org/misc/wget/
rem http://gnuwin32.sourceforge.net/packages/unzip.htm

REM create folder cryply and data
MD C:\cryply
MD C:\cryply\data

REM download cryply wallet
wget.exe -P c:\cryply -nc https://github.com/cryply/cryply-wallet/releases/download/1.1.0/cryply-qt-v1.1.0.0.exe

REM create start bat file
Echo C:\cryply\cryply-qt-v1.1.0.0.exe -datadir=C:\cryply\data > C:\cryply\cryply.bat

REM download archive blockchain
wget.exe -P c:\cryply -nc http://yenten-pool.ml/blocks_17_08_2018.zip


REM unzip blockchain
unzip.exe c:\cryply\blocks_17_08_2018.zip -d c:\cryply\data

REM move folders
move C:\cryply\data\root\blocks\blocks c:\cryply\data
move C:\cryply\data\root\blocks\chainstate c:\cryply\data
move C:\cryply\data\root\blocks\.lock c:\cryply\data
move C:\cryply\data\root\blocks\db.log c:\cryply\data
move C:\cryply\data\root\blocks\peers.dat c:\cryply\data 

REM start Cryply wallet
cd c:\cryply
start C:\cryply\cryply.bat

pause
