@echo off
cd "%DAYZ-SA_SERVER_LOCATION%"
start "" "DayZServer_x64.exe" -config=serverDZ.cfg -port=2302 -profiles=profiles -dologs -adminlog -netlog -freezecheck -mod=C:\Programs\Steam\steamapps\common\DayZ\!Workshop\@CF;C:\Programs\Steam\steamapps\common\DayZ\!Workshop\@Banking;C:\Programs\Steam\steamapps\common\DayZ\!Workshop\@Community-Online-Tools -BEpath=C:\Programs\Steam\steamapps\common\DayZServerGit\dayz-rp-server\battleye
