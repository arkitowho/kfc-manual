@echo off
pushd %~dp0

title Launch SOUND VOLTEX EXCEED GEAR 

echo Booting Game....

echo Launch Asphyxia...
start /min ../asphyxia-core-win-x64/asphyxia-core-x64.exe

echo Launch Game...
start /wait spice64.exe -url localhost:8083

echo Exit all task...
taskkill /f /t /im asphyxia-core-x64.exe > nul 2>&1
taskkill /f /t /im spice64.exe > nul 2>&1

pause