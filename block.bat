@echo off
cls
title spotify adblock
color 70
echo Backing up the hosts
copy %windir%\system32\drivers\etc\hosts 
for /F "tokens=*" %%i in (adserverList.txt) do (
set line=127.0.0.1 %%i
)
