::����java_home
@echo off
echo ���java_home
set regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set evname=JAVA_HOME
set javapath=C:\Program Files\Java\jre7
reg add "%regpath%" /v %evname% /d %javapath% /f
pause>nul