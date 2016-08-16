::在%systemdrive%%homepath%\.m2 C:\Users\Admin~\.m2
::进入maven默认的repo库目录
%systemdrive%
cd %homepath%
cd .m2
::删除.lastUpdated文件
for /r %%i in (*.lastUpdated) do del %%i
pause