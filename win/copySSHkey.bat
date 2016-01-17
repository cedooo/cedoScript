@echo off

:: TODO:拷贝ssh到系统默认ssh目录中
color 02
::设置SSH key 路径
echo 请使用管理员身份执行
set input=
set /p "input=请输入SSH key路径（或回车默认路径为D:\ssh）:"
if defined input (echo SSH key路径已设置) else (set input=D:\ssh)

copy %input%\id_rsa %systemdrive%%homepath%\.ssh\id_rsa
copy %input%\id_rsa.pub %systemdrive%%homepath%\.ssh\id_rsa.pub
