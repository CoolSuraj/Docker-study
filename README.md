# Docker-study
This is to add all relevent study about docker.

#To download Docker Desktop in your system visit 
https://docs.docker.com/desktop/setup/install/

#To check your first docker coomand run 
--> docker run hello-world


[docker-compose.yml](https://github.com/user-attachments/files/25000830/docker-compose.yml)
[docker-compose-mariadb.yml](https://github.com/user-attachments/files/25000828/docker-compose-mariadb.yml)
#To Install and run mariadb in docker open terminal in directory where you have docker-compose file ,edit the file with data from docker-compose-mariadb.yml
then run --> docker-compose up -d

#To Check that mariadb instance in terminal 
use docker exec -it mysql-db mariadb -u root -p // password is root

Note: use db testdb;


