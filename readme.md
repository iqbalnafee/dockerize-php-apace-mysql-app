#Dockerfile content start

1. FROM php:7.4-cli -> capture php image from docker hub

2. COPY . /usr/src/myapp -> put the current folder's content into the /usr/src/myapp which is our containers directory.
3. WORKDIR /usr/src/myapp -> make the container directory
4. CMD [ "php", "./index.php" ] -> our running command since if we want to run a php file from command line, we use "php file_name.php".

#Dockerfile content end

#Command line start

1. $ docker build -t my-php-app . -> build the image and tag (or name it by indicating -t) it as my-php-app
2. $ docker run -it --rm --name my-running-app my-php-app -> run the container name my-running-app from the image my-php-app.

3. docker rm -f $(docker ps -a -q) -> to stop all containers

#Command line end

#command for start apache server without Dockerfile start

1. $ docker run -d -p 8082:8082 --name my-apache-php-app -v D:\Projects\docker\php-mysql-docker:/var/www/html php:7.2-apache

#command for start apache server without Dockerfile end

#command for docker-compose.yaml start

1. docker-compose down -> to stop the compose file
2. docker-compose build -> to build the compose file after any change done in Dockerfile
3. docker-compose up -> to run compose file

#command for docker-compose.yaml end
