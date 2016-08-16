::将proxy安装城windows服务
@echo off
title 删除代理服务
cd /d %~dp0

set servicename=vpntechproxy

::set servicestatus=sc query vpntechproxy | find "STATE"
instsrv %servicename% remove


echo Windows Registry Editor Version 5.00 >regdel.reg 
echo. >>regdel.reg 
echo [-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\%servicename%\Parameters] >>regdel.reg 
regedit /s regdel.reg 
del /q regdel.reg 

pause