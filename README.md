# Docker Java Example

### Pull this repository
`git pull https://github.com/aakashnand/docker_example.git`
### Build Docker Image from Dockerfile
`$ docker build -t java_image `

OUTPUT:
```
ending build context to Docker daemon  40.45kB
Step 1/5 : FROM java:7
7: Pulling from library/java
5040bd298390: Pull complete 
fce5728aad85: Pull complete 
76610ec20bf5: Pull complete 
60170fec2151: Pull complete 
66b144b1d5b0: Pull complete 
6263baad4f89: Pull complete 
Digest: sha256:c0b61b62639124aa838dc755c5a9d57c072f762b71b170281927399a14db4652
Status: Downloaded newer image for java:7
 ---> 5dc48a6b75af
Step 2/5 : COPY . /usr/src/myapp
 ---> 939d7fa59373
Step 3/5 : WORKDIR /usr/src/myapp
 ---> Running in 8e2f1c61a883
Removing intermediate container 8e2f1c61a883
 ---> cc6384f66dc5
Step 4/5 : RUN javac Main.java
 ---> Running in 0902191efa6f
Removing intermediate container 0902191efa6f
 ---> 63fc731ac6eb
Step 5/5 : CMD ["java", "Main"]
 ---> Running in 49a7ffd061e3
Removing intermediate container 49a7ffd061e3
 ---> d8afea5995af
Successfully built d8afea5995af
Successfully tagged java_image:latest
```

### Check image is available
`$ docker images | grep java`

OUTPUT:
```
NW-6-Aakash:docker_example aakashnand$ docker images | grep java_image
java_image                            latest              f394806e4eb3        About an hour ago   584MB
```

### Create container 
`$ docker run -i -d -t --name test_java f394806e4eb3`

### Check container status
`$ docker ps | grep java`
OUTPUT:
```
e3dd5360c6cd        f394806e4eb3        "/bin/sh -c 'java Ma…"   5 seconds ago       Up 4 seconds                                 test_java
```

### Checking the output of java file of container
* Points to be noted
** Since we have written `tail` command in CMD our container will keep running in background 
1. Check the logs of container for output

`$ docker logs e3dd5360c6cd`

OUTPUT:
```
Hello, World
NW-6-Aakash:docker_example aakashnand$ 
```



