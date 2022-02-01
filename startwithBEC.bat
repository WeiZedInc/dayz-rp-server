@echo off
TITLE Server Status
COLOR 0D
:: Variables::
::Enter Your DayZServer_64.exe path.
set DAYZ-SA_SERVER_LOCATION="C:\Programs\Steam\steamapps\common\DayZServerGit\dayz-rp-server"
::Enter Your Bec.exe path.
set BEC_LOCATION="C:\Programs\Steam\steamapps\common\DayZServerGit\dayz-rp-server\bec"
::::::::::::::

echo Inspection
goto checksv
pause

::This Will check if your server is running on start.
:checksv
tasklist /FI "IMAGENAME eq DayZServer_x64.exe" 2>NUL | find /I /N "DayZServer_x64.exe">NUL
if "%ERRORLEVEL%"=="0" goto checkbec
cls
echo Server is offline. Starting...
goto killsv

::This will check if your Bec is running.
:checkbec
tasklist /FI "IMAGENAME eq Bec4.exe" 2>NUL | find /I /N "Bec4.exe">NUL
if "%ERRORLEVEL%"=="0" goto loopsv
cls
echo BEC not loaded! Loading...
goto startbec

::This will check every 10 second if your server is still running.
:loopsv
FOR /L %%s IN (10,-1,0) DO (
	cls
	echo Server if offline. Checking...
	timeout 1 >nul
)
goto checksv

::This will shutdown your Server and Bec When this task is asked.
:killsv
taskkill /f /im Bec4.exe
taskkill /f /im DayZServer_x64.exe
goto startsv

::This will start your Server and open up the console.
::Dont forget to edit your Port, Path location of Battleye and your Profiles.
:startsv
cls
echo Starting server.
timeout 1 >nul
cls
echo Starting server..
timeout 1 >nul
cls
echo Starting server...
cd "%DAYZ-SA_SERVER_LOCATION%"
start "" "DayZServer_x64.exe" -config=serverDZ.cfg -port=2302 -profiles=profiles -dologs -adminlog -netlog -freezecheck "-mod=C:\Programs\Steam\steamapps\common\DayZ\!Workshop\@CF;C:\Programs\Steam\steamapps\common\DayZ\!Workshop\@Banking;C:\Programs\Steam\steamapps\common\DayZ\!Workshop\@Community-Online-Tools" "-servermod=@mod" "-BEpath=C:\Programs\Steam\steamapps\common\DayZServerGit\dayz-rp-server\battleye"
FOR /L %%s IN (10,-1,0) DO (
	cls
	echo BEC Init in - %%s
	timeout 1 >nul
)
goto startbec

::This will start your Bec and open up the console
:startbec
cls
echo Starting BEC.
timeout 1 >nul
cls
echo Starting BEC..
timeout 1 >nul
cls
echo Starting BEC...
timeout 1 >nul
cd "%BEC_LOCATION%"
start Bec4.exe -f Config.cfg --dsc
goto checksv