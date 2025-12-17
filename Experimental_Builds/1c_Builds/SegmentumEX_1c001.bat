:: Segmentum-EX 1c-001
:: Copyright by jjoMooNo
@echo off
title Segmentum EX (1c-001)
color a
echo "Welcome to Segmentum Client!"
echo "What do you want to do?"
echo "[K: ClassM Shutdown / M: mvnc Shutdown / A: ClassM, mvnc Shutdown / R: Reboot Computer / E: Exit]"
choice /c KMARE /n

if errorlevel 5 exit
if errorlevel 4 shutdown /r /f /t 0
if errorlevel 3 goto DoubleShut
if errorlevel 2 goto MvncShut
if errorlevel 1 goto ClassMShut

:ClassMShut
echo "Start ClassM Shutdown..."
goto ClassMShut2
:ClassMShut2
taskkill /f /im hscagent.exe 2>nul
goto ClassMShut2

:MvncShut
echo "Start mvnc Shutdown..."
goto MvncShut2
:MvncShut2
taskkill /f /im mvnc.exe 2>nul
goto MvncShut2

:DoubleShut
echo "Start ClassM, mvnc Shutdown..."
goto DoubleShut2
:DoubleShut2
taskkill /f /im hscagent.exe
taskkill /f /im mvnc.exe
goto DoubleShut2


