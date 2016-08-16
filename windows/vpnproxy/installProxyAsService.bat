::将proxy安装城windows服务
@echo off
echo 安装代理服务
cd /d %~dp0

set servicename=vpntechproxy
instsrv %servicename% %cd%\srvany.exe

set currentpathinregedit=%cd:\=\\%
echo Windows Registry Editor Version 5.00 >regload.reg 
echo. >>regload.reg 
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%servicename%\Parameters] >>regload.reg 
echo "AppDirectory"="%currentpathinregedit%\\" >>regload.reg 
REM 目标exe
echo "Application"="%currentpathinregedit%\\plink.exe" >>regload.reg 
REM 程序启动参数
echo "AppParameters"="-N -pw ****** vpntech@s2.avpn.us -P 2224 -D 127.0.0.1:1081" >>regload.reg 
regedit /s regload.reg 
::reg import regload.reg
del /q regload.reg 

pause
