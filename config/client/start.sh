#! /usr/bin/env bash

echo "WORK_DIR=$HOME/.vibuntu" > .env

docker-compose -f ./composea.yml up -d
