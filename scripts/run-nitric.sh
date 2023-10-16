#!/bin/bash

# exit if a command returns a non-zero exit code and also print the commands and their args as they are executed
set -e -x

nitric up --ci -v2