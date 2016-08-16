@echo off
echo Stopping vpn proxy...
taskkill /F /IM plink.exe > nul
pause