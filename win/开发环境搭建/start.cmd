::允许windows执行powershell脚本文件
powershell set-executionpolicy -executionpolicy unrestricted
::下载7-Zip
powershell .\installFile.ps1
::安装7-zip
%systemdrive%\7zip.msi
::删除7-zip安装包
del %systemdrive%\7zip.msi

set zipdrive=
set /p "zipdrive=请输入ZIP所在路径（或回车默认路径为D:\devenv.zip:"
if defined input (echo ZIP所在路径已设置) else (set zipdrive=D:\devenv.zip)

::解压devenv文件到C盘根目录
"%programfiles%"\7-zip\7z e -y -spf %zipdrive% -o%systemdrive%\


::拷贝ssh key && 设置Java环境 && 设置maven环境
copySSHkey.bat && javaEnvSet.bat && mavenEnvSet.bat
echo 拷贝ssh key完成, java环境设置完成, Maven环境设置完成
pause
