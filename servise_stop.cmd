@echo off
chcp 65001 >nul
:: 65001 - UTF-8

whoami /groups | findstr "S-1-16-12288" >nul && goto :admin
if "%~1"=="RunAsAdmin" goto :error

:error
echo.
echo. Данный файл должен быть запущен с правами администратора (ПКМ - Запустить от имени администратора).
echo. Чтобы выполнить остановку сервиса.
echo.
goto :end

:admin


net stop zapret


:end
pause
exit /b
