@echo off
REM Go to your compose directory
cd /d C:\Users\admin\3D Objects\Mysql-docker-test

echo Stopping existing containers...
docker-compose stop

echo Done.
pause
