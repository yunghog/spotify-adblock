@echo off
cls
title spotify adblock
color 70
for /F "tokens=*" %%i in (adserverList.txt) do (
echo %%i
set line=127.0.0.1 %%i
echo %line% >>new.txt
)
