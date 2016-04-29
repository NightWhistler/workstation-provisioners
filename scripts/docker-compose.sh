#!/usr/bin/env bash

echo " * Installing Package: docker-compose"

dockercompose_version=$(version "docker-compose")

sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${dockercompose_version}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose
