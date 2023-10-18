#!/bin/bash

# exit if a command returns a non-zero exit code and also print the commands and their args as they are executed
set -e -x

# Add the pulumi CLI to the PATH
export PATH=$PATH:$HOME/.pulumi/bin
export PATH=$PATH:$HOME/.nitric/bin

apt-get update
apt-get install sudo -y

yarn install

sudo nitric up --ci -v2