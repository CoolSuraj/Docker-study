@echo off
REM Go to your compose directory
cd /d C:\Users\admin\3D Objects\Mysql-docker-test

echo Stopping existing containers...
docker-compose down

echo Starting fresh containers...
docker-compose up -d

echo Done.
pause
