#!/usr/bin/env bash

set -ex

echo 'helloworld init_worker'

sudo apt install -y curl wget git

curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt install -y yarn

sudo apt remove --autoremove --purge -y python3-pipenv || true
sudo apt remove --autoremove --purge -y pipenv || true
sudo pip3 install pipenv
