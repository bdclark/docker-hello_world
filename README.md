Basic Node.js docker hello world


```bash
# build image
docker build --tag awesome_app .

# run container
docker run --detach --name awesome_app --publish 8080:8080 awesome_app:latest

# try it
curl -s http://localhost:8080
Hello world

# stop container
docker stop awesome_app
docker rm awesome_app

# remove image
docker rmi awesome_app
```
