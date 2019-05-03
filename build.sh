#!/bin/bash

echo "Starting build.sh"
date -d "+2 hours"

# prerequisites
./run_script_in_folder.sh generate_instance.py

# docker-compose down

# docker-compose up --build -d

./run_script_in_folder.sh manage.py build all --push

date -d "+2 hours"
echo "build.sh ended"