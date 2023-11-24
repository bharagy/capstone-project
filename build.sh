#!/bin/bash
sudo docker build -t myreactimg .
sudo docker-compose down || true
sudo docker-compose up -d

