# Disastergram

This project is part for the distributed systems course ΠΛΗ414 at the Technical of Crete. It implements a distributed system for image sharing between users.

Project presentation:
https://drive.google.com/open?id=1aOTOBFq-uxNMoKeHxriBZuYeOWk1wa0BXbLOjQSJ7qc

### Prequisites

* Docker version 18.09.6+
https://docs.docker.com/install/
___IMPORTANT!___ To be able to manage Docker as a non root user in linux systems follow the bellow post-install instructions. 
https://docs.docker.com/install/linux/linux-postinstall/
* docker-compose version 1.22.0+
https://docs.docker.com/compose/install/
* Python3.6+


### Running the project

Clone repository and submodules:
```
git clone https://github.com/dnikolaidis2/disastergram
cd disastergram
git submodule init
git submodule update
```

___WARNING!___ This is a very important step as it generates all public/private key pairs for the services:
```
./run_script_in_folder.sh generate_instance.py
```

Make folders to store migrations
```
mkdir -p disastergram-{applogic,auth}/migrate
```

Copy project configuration file and edit as desired:
```
mv example.env .env
```

Run the project
```
docker-compose up --build -d
```
