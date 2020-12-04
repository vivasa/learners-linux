#! /usr/bin/env bash

cd /root/sources

if [[ -z "${WORK_DIR}" ]]; then
  echo 'Hello! Welcome to a personalized experience of Linux through docker.'
  echo ""
  echo "Follow these steps to get started: "
  echo ""
  echo ""
  echo '1. Create a file named run.bat in any directory. '
  echo '2. Copy following contents into the new file and save.'
  echo ""
  echo '#! /usr/bin/env bash
echo "WORK_DIR=$PWD" > .env
docker-compose -f ./composea.yml up -d'

  echo ""
  echo '3. Execute the file'

  export TOKEN_JSON=jwt.default.json
fi

if [ ! -f /root/sources/start.sh ]; then
  cp /root/config/composea.yml /root/sources/composea.yml
  cp /root/config/start.sh /root/sources/start.sh
  chmod a+x /root/sources/start.sh
fi
