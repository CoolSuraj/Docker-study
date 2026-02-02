# Docker-study
This is to add all relevent study about docker.

#To download Docker Desktop in your system visit 
https://docs.docker.com/desktop/setup/install/

#To check your first docker coomand run 
--> docker run hello-world


#To Install and run mariadb in docker open terminal in directory where you have docker-compose file ,edit the file with data from docker-compose-mariadb.yml 
[docker-compose.yml](https://github.com/user-attachments/files/25000830/docker-compose.yml)
[docker-compose-mariadb.yml](https://github.com/user-attachments/files/25000828/docker-compose-mariadb.yml)
then run --> docker-compose up -d

#If you want to stop the MariaDB service but keep the container intact (preserving its internal state for a quick restart later), 
run this command from the directory where your docker-compose.yml is located:  --> docker-compose stop

#If you are finished with your work and want to stop and remove the containers and the internal network created by Compose,
use --> docker compose down

#To Check that mariadb instance in terminal 
use docker exec -it mysql-db mariadb -u root -p // password is root

Note: use db testdb;


