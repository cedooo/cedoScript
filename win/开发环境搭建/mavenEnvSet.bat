@echo off

:: TODO:设置maven环境变量
color 02
::设置java的安装路径，可方便切换不同的版本
echo 请使用管理员身份执行
set input=
set /p "input=请输入maven路径（或回车默认路径为%systemdrive%\devenv\apache-maven-3.3.9）:"
if defined input (echo maven路径已设置) else (set input=%systemdrive%\devenv\apache-maven-3.3.9)
echo maven路径为%input%
set mvnPath=%input%

::在环境变量path中， 去掉mvn中的字符
call set xx=%Path%;%mvnPath%\bin

echo %xx%

::将返回显的字符重新赋值到path中
wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%xx%"

pause