#!/bin/bash
<<<<<<< HEAD
sudo docker build -t myreactimg
sudo docker-compose up -d
=======
sudo docker build -t myreactimg .
sudo docker-compose down || true
sudo docker-compose up -d

>>>>>>> dev
