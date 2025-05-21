
@echo off
REM -- MySQL Configuration Script After Unattended Install --
REM Assumes MySQL is installed in the default location and added to PATH

set MYSQL_PATH="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"

echo Setting root password and user privileges...
%MYSQL_PATH% -u root --connect-expired-password < "%~dp0univ_information_sys.sql"

echo Restoring univ_information_sys.sql into univ_information_sys...
%MYSQL_PATH% -u root -pmike univ_information_sys < "%~dp0univ_information_sys.sql"

echo MySQL setup and database restoration complete.
pause