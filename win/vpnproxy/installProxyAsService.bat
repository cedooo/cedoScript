::��proxy��װ��windows����
@echo off
echo ��װ�������
cd /d %~dp0

set servicename=vpntechproxy
instsrv %servicename% %cd%\srvany.exe

set currentpathinregedit=%cd:\=\\%
echo Windows Registry Editor Version 5.00 >regload.reg 
echo. >>regload.reg 
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%servicename%\Parameters] >>regload.reg 
echo "AppDirectory"="%currentpathinregedit%\\" >>regload.reg 
REM Ŀ��exe
echo "Application"="%currentpathinregedit%\\plink.exe" >>regload.reg 
REM ������������
echo "AppParameters"="-N -pw 3846721 vpntech@s2.avpn.us -P 2224 -D 127.0.0.1:1081" >>regload.reg 
regedit /s regload.reg 
::reg import regload.reg
del /q regload.reg 

pause