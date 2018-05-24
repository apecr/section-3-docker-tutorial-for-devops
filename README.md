# Section 3

## Docker instructions

### 19.- Containerize a Simple Hello World Web Application

```
docker build -t dockerapp:v0.1 .
docker run -d -p 5002:5000 <imageId>
GET localhost:5002
docker exec -it <imageId> bash
cd /home/admin
ps axu # Aparece el proceso python
```

### 21.- Implement a Simple Key-value Lookup Service

```
docker build -t dockerapp:v0.2 .
docker ps # List all the containers
docker stop <imageId> # Stop the container from the previous section
docker run -d -p 5002:5000 <imageId>
```

### 22. Create Docker Container Links

```
docker stop <previousImageId>
docker run -d --name redis redis:3.2.
docker build -t dockerapp:v0.3 .
docker run -d -p 5002:5000 --link redis dockerapp:v0.3
docker exec -it <dockerappContainerId> bash
more /etc/hosts # See the entry for the redis container
exit # Exit the container
docker inspect <dockerImageRedisIdInDockerappContainer> | grep IP
```

### 23.- Automate current workflow with Docker Compose

```
docker-compose up
docker ps # Vemos todos los servidores levantados
```

### 24.- Deep Dive into Docker Compose Workflow

```
docker-compose up -d # Start containers in detach mode
docker-compose logs
docker-compose logs -f
docker-compose logs <containerName> # Ej: dockerapp, redis
docker-compose stop # Stop the containers
docker-compose rm # remove all the containers
docker-compose ps
```

Si se cambia algo del Dockerfile hay que rehacer la image:

```
docker-compose build
docker-compose up -d
docker exec -it <containerId> bash
```

* **docker-componse up** starts up all the containers
* **docker-compose ps** checks the status of the containers 
managed by docker-compose.
* **docker-componse logs** outputs colored and aggregated logs for the
compose-maanaged containers.
* **docker-compose logs -f** outputs appended log when the log grows
* **docker-compose logs <containerName>** outputs the logs of a specific
container
* **docker-compose stop** stops all the running containers without removing
them.
* **docker-compose rm** removes all the containers.
* **docker-compose build** rebuilds all the images.

### 25.- Things to wathc out when working with Docker Containers

https://www.level-up.one/things-watch-working-docker-containers/

* One Process, One Docker
* Use Volumes for Data Storage
* Docker Container Communication
* Run Docker as Normal User
* Pay Attention to Size of Container
* Develop a Monitoring Strategy
* Security of your Docker Container