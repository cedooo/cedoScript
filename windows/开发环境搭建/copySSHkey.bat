@echo off

:: TODO:拷贝ssh到系统默认ssh目录中
color 02
::设置SSH key 路径
echo 请使用管理员身份执行
set input=
set /p "input=请输入SSH key路径（或回车默认路径为%systemdrive%\devenv\ssh）:"
if defined input (echo SSH key路径已设置) else (set input=%systemdrive%\devenv\ssh)
::如果.ssh文件夹不存在，则自动创建文件夹
if not exist %systemdrive%%homepath%\.ssh mkdir %systemdrive%%homepath%\.ssh

copy %input%\id_rsa %systemdrive%%homepath%\.ssh\id_rsa
copy %input%\id_rsa.pub %systemdrive%%homepath%\.ssh\id_rsa.pub
