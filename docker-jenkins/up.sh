#!/usr/bin/env bash

set -ex

mkdir -p jenkins_home
sudo chown 1000:1000 -R .

# docker build . -t logickee/jenkins_lts
# docker build . -t 192.168.10.61:5000/logickee/jenkins_lts
# docker push 192.168.10.61:5000/logickee/jenkins_lts
# docker run -p 8080:8080 -p 50000:50000 -v $PWD/jenkins_home:/var/jenkins_home logickee/jenkins_lts

# docker run -it -v ./share:/share logickee/jenkins_lts bash

docker compose up 