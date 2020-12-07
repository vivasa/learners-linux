#! /usr/bin/env bash

if [ ! -d /vibuntu ]; then
  echo ""
  echo "Initialization Failed!"
  echo ""
  echo "Run the following command:"
  echo "    docker run -v <Full path of the present directory>:/vibuntu vivasa/ubuntu:learn "

  exit -1
fi

if [ ! -f /vibuntu/.yml ]; then
  cp -a /root/config/state1/. /vibuntu

  chmod a+x /vibuntu/*.sh

  echo ""
  echo "SUCCESS! Your folder has been initialized."
  echo ""
  echo "Run the script 'run.sh' from the current folder."

fi
