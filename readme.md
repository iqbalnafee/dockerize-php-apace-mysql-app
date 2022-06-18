<!--Dockerfile content start-->

FROM php:7.4-cli -> capture php image from docker hub
COPY . /usr/src/myapp -> put the current folder's content into the /usr/src/myapp which is our containers directory.
WORKDIR /usr/src/myapp -> make the container directory
CMD [ "php", "./index.php" ] -> our running command since if we want to run a php file from command line, we use "php file_name.php".

<!--Dockerfile content end-->

<!--Command line start-->

$ docker build -t my-php-app . -> build the image and tag (or name it by indicating -t) it as my-php-app
$ docker run -it --rm --name my-running-app my-php-app -> run the container name my-running-app from the image my-php-app.

<!--Command line end-->
