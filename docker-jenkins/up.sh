#!/usr/bin/env bash

set -ex

sudo chmod 777 -R jenkins_home

docker build -t logickee/jenkins_lts .
docker run -p 8080:8080 -p 50000:50000 -v $PWD/jenkins_home:/var/jenkins_home logickee/jenkins_lts