#!/bin/bash
sudo apt update
sudo apt install docker.io docker-compose -y
sudo systemctl start docker
sudo docker-compose -f docker-compose.yml up -d