@echo off
cd /d %~dp0
::relink
plink.exe -N -pw ****** vpntech@s2.avpn.us -P 2224 -D 127.0.0.1:1081
::goto :relink
