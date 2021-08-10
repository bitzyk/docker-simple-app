# Simple Web Application

This is a simple web application using PHP and MySql database. 
This is used in the demonstration of docker containers.

## 1. Docker build & run

    docker build . -t docker-simple-app-image
    
    docker run -p 80:80 docker-simple-app-image