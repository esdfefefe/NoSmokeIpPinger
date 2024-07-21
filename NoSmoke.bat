@echo off
color 9

title NOSMOKING

:greeting
cls
echo 88888888  8888b.  888  888 
echo   d88P      "88b 888  888 
echo  d88P   .d888888 888  888 
echo  d88P    888  888 Y88b 888 
echo 88888888 "Y888888  "Y88888 
                       888 
                  Y8b d88P 
                   "Y88P"  
set /p Ip=ENTER IP: 
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo IP Is SMOKED.) 
set /a num=(%Random%%%9)+1
color %num%
ping -t 1 0 10 127.0.0.1 >nul
GoTo top
