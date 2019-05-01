#!/bin/bash

echo "Starting deploy.sh"
date -d "+2 hours"

./run_script_in_folder.sh generate_instance.py

docker-compose down

docker-compose up --build -d

./run_script_in_folder.sh manage.py build all --push

date -d "+2 hours"
echo "deploy.sh ended"