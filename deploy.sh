#!/bin/bash

echo "Starting deploy.sh"
date -d "+2 hours"

./run_script_in_folder.sh generate_instance.py

docker-compose down --remove-orphans

docker-compose up --build --force-recreate -d

./run_script_in_folder.sh manage.py build all --push

date -d "+2 hours"
echo "deploy.sh ended"