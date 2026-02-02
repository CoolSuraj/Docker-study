@echo off
REM Go to your compose directory
cd /d C:\Users\admin\3D Objects\kafka-local

echo Stopping existing containers...
docker-compose down


echo Done.
pause
