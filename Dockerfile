#The FROM instruction specifies the base image which docker daemon will use. In this case we are using java:7. The docker daemon does not need any URL for 
# downloading since this is standard image. There are various standard images available on https://hub.docker.com/search?q=&type=image
FROM java:7 

# The COPY instructions copies the current directory to /usr/src/myapp inside the container
COPY . /usr/src/myapp

# WORKDIR sets the working directory inside the container. In this case we will use /usr/src/myapp since we have copied java file to that folder
WORKDIR /usr/src/myapp

# RUN commands executes the specified instruction inside the container. In this case, we are compiling the Main.java file.
RUN javac Main.java

# Finally to see the output we are executing Main file using CMD command. CMD commands sets the default command when conatiner starts running
CMD java Main && tail -f -n0 /etc/hosts