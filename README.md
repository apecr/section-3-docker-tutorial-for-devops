# Section 3

## Code

```
docker build -t dockerapp:v0.1 .
docker run -d -p 5002:5000 <imageId>
GET localhost:5002
docker exec -it <imageId> bash
cd /home/admin
ps axu # Aparece el proceso python
```