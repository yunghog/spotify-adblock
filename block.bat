@echo off
cls
title spotify adblock
color 70
echo Backing up the hosts
rem hosts
copy %windir%\system32\drivers\etc\hosts
echo Hosts backed up!
echo Writing into hosts
for /f "tokens=*" %%i in (adserverList.txt) do (
echo 127.0.0.1 %%i>>%windir%\system32\drivers\etc\hosts

)
