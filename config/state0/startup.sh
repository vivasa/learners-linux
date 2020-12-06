#! /usr/bin/env bash

cd /root/sources

if [ ! -d /root/sources ]; then
  echo "Initialization failure. Unable to locate the launch directory."
  echo "Please refer to initialization notes or run the following command:"
  echo ""
  echo "    docker run --rm -it -v <Full path of the present directory>:/vibuntu vivasa/ubuntu:learn "

  exit -1
fi

if [ ! -f /root/sources/plan.yml ]; then
  cp /root/config/state1/plan.yml /root/sources/plan.yml
  cp /root/config/state1/run.sh /root/sources/run.sh
  chmod a+x /root/sources/run.sh
fi
