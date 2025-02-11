@echo off

rmdir		/s "C:\xampp\mysql\data_old"

echo		PASTA DE BACKUP ANTIGA APAGADA!

ren		"C:\xampp\mysql\data" data_old

echo		PASTA DE BACKUP CRIADA!

md		C:\xampp\mysql\data

echo		PASTA CRIADA! 

XCOPY		C:\xampp\mysql\backup\*.* C:\xampp\mysql\data\ /D /E /Y /C /K

XCOPY		C:\xampp\mysql\data_old\test\* C:\xampp\mysql\data\test /S /I /D /E /Y /C /K

XCOPY		C:\xampp\mysql\data_old\SUA_PASTA\* C:\xampp\mysql\data\SUA_PASTA /S /I /D /E /Y /C /K

XCOPY		C:\xampp\mysql\data_old\SUA_PASTA\* C:\xampp\mysql\data\SUA_PASTA /S /I /D /E /Y /C /K

XCOPY		C:\xampp\mysql\data_old\ibdata1 C:\xampp\mysql\data\ /D /E /Y /C /K

echo		FIM DO BACKUP!

ECHO.
ECHO.

PAUSE
