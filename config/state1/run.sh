#! /usr/bin/env bash

echo "WORK_DIR=$HOME/.vibuntu" > .env

docker-compose -f .yml up -d

ctrs=$(docker ps | grep vibuntu)

if [[ "$ctrs" ]]; then
  echo "Success! Service is launched successfully"
fi

