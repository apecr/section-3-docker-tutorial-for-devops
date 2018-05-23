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