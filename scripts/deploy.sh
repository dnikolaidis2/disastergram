#!/bin/bash

./scripts/generate_instances.sh

docker-compose down --remove-orphans

docker-compose up --build --force-recreate -d

