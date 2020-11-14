#!/bin/bash

sudo apt update

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common # установка всех необходимых пакетов, которые позволяют apt использовать пакеты по HTTPS

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - #добавляем в свою систему ключ GPG официального репозитория Docker

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" #добавляем репозиторий Docker в список источников пакетов apt

sudo apt update

sudo apt install -y docker-ce

sudo usermod -aG docker $USER #добавление текущего пользователя в группу docker, чтобы не вводить каждый раз sudo

sudo chmod 666 /var/run/docker.sock

sudo reboot



