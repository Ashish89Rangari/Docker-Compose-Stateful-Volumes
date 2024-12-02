# Docker-Compose-Springboot-Mysql
Docker-Compose-Spring-boot-Mysql    <br/> How multiple container connects (1- Spring-boot App Conatiner, 2- MySQL Conatiner)

# Docker-Compose Stateful-Volumes
Statefull Container : Data will be available permanently even after container deletion. DB data will be restored. (Note: Docker containers are stateless by default.)


# Docker-Compose-Springboot-Mysql
Architecture
![image](https://github.com/user-attachments/assets/59bcf809-f985-4ebe-98bd-5b456289dbc9)


# Requirements and Point to noted 

Application Container- Application will run on application container
MySQL DB Container – Database will run on database container.
* Application container is dependent on DB container.
* DB container Data store in volume.
For communicating between both containers, both containers should be in same network.
Once we execute above docker-compose yml it will create containers and it will map MySQl DB container data to .app directory.
We can check container data in .app directory


# Docker-Compose-Springboot-Mysql
  
Check container data in .app directory (DB is mounted to .app folder)

```bash
$ ls -la  .app  
```

Build the image using the following command

```bash
$ docker build -t spring-boot-mysql-app .
```
To list Docker images and container using the command shown below.

```bash
$ docker images 
$ docker ps 
```
To check docker containers running in docker compose network.

```bash
$ docker-compose ps

```

To create docker containers using docker-compose(Docker-compose.yml file).

```bash
$ docker-compose up -d

```
To stop docker containers running.

```bash
$ docker-compose stop

```
To start docker containers which are stopped.

```bash
$ docker-compose start

```
To delete docker containers using docker-compose.

```bash
$ docker-compose down

```

To Push docker image in Dockerhub first tag it , if tagged push directly to Dockerhub.

```bash
$ docker tag spring-boot-mysql-app:latest ashishr99/docker-compose-springboot-mysql-app:latest
$ docker push ashishr99/docker-compose-springboot-mysql-app:latest 
```


# For Linux
The application will be accessible at http://public-ip:8080

# For windows
The application will be accessible at http://localhost:8080
