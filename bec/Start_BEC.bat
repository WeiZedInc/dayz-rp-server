@Echo off
cd /d %~dp0
"%cd%\Bec.exe" -f Config.cfg
ping 127.0.0.1 -n 5 >NUL
exit
