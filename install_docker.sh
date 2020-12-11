#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install curl wget
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ubuntu