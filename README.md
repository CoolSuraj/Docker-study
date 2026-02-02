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

To use Kafka everything is given in docker-compose.yml in kafka folder
commands to run are given in bat files in respective folder
To remove images along with files --> docker compose down -v

to remove all the inactive images --> 
#NOTES  
    
#  How to verify the "Health" status
#  use this command -->   docker compose ps
    
#Target	        Command	                    Description
#Containers	    docker container prune	    Removes all stopped containers.
#Images	        docker image prune -a	    Removes all images not used by a container.
#Volumes	    docker volume prune	        Removes all volumes not used by a container (reclaims the most space).
#Specific Image	docker rmi <image_id>	    Manually deletes one specific image.


