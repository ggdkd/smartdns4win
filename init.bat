cd %~dp0
wsl sudo chmod 777 setdebian.sh
wsl sudo ./setdebian.sh
cd /d "./windows"

set "STARTUP_PATH=%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
FOR /F %%i IN ('wsl pwd') DO @set DIR_IN_WSL=%%i
FOR /F %%i IN ('dir /w /b ..\*.deb') DO @set DEB_FILE=%%i

copy .\wsl-run.vbs "%STARTUP_PATH%/"
@IF NOT %ERRORLEVEL% == 0 (
@echo Install startupt script failed.
@pause
)

echo ��������,���޸������ļ�֮���������루Ĭ�ϲ�һ���ʺ������ˣ�

set "STARTUP_PATH=%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
FOR /F %%i IN ('wsl pwd') DO @set DIR_IN_WSL=%%i

wsl sudo cp -avf %DIR_IN_WSL%/../conf/* /etc/smartdns/
@IF NOT %ERRORLEVEL% == 0 (
@echo copy smartdns configuration file failed.
@pause
)

wsl sudo /etc/init.d/smartdns restart
@IF NOT %ERRORLEVEL% == 0 (
@echo reload smartdns failed.
@pause
)

::echo dns����Ϊ127.0.0.1�Ϳ���ʹ�ñ�������ܣ�����n�ֶ��趨,�����Զ��趨
::set choose=
::set /p choose=
::if "%choose%"=="n" (echo ��װ����) & exit /b
::echo ����dns��
::for /f "skip=3 tokens=3,* delims= " %%a in ('netsh interface show interface') do (echo "%%b">>shipei.txt)
::for /f "tokens=* delims= " %%a in (shipei.txt)do (netsh interface ip set dns name=%%a source=static address=127.0.0.1 register=primary validate=yes)
::del shipei.txt
::echo ����dnsΪ127.0.0.1���,��װ����
::exit /B

@echo init smartdns success
@pause