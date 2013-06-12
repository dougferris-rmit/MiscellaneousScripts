:: DVD/CD burning fix
:: Last updated 2013-06-12 by Doug Ferris
:: Coded because: Support agents had to put in their MGR accounts to connect to other computers using SCCM client 
:: How to use: Install SCCM Client off SCCM, then doubleclick to execute 
:: Intended target: Have it connect to a specific computer. Not complete because: Could find no documentation on development page supporting this or within the program directory.
echo off
SET user=%USERNAME%
SET mgruser=mgr-%user%
runas /savecred /user:rmit\%mgruser% "C:\Program Files\SCCM Tools\SCCM Client Center\SMSCliCtrV2.exe"
exit