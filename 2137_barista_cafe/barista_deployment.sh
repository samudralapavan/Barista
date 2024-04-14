#!/bin/bash

<< task
Deploying the Barista Cafe Code using shell-script
task

echo "_____________________________ Docker DEPLOYMENT STARTED_______________________________"
build () {
	echo "docker image build"
	sudo docker build -t pavans .
}
deploy (){
	sudo docker run -itd --name pavans -p 81:80 -v .:/var/www/html pavans:latest
	
}

if ! build; then
	echo "build has been successed "
	exit 1
fi

if ! deploy ; then
	echo "docker already created"
	exit 1
fi
echo "________________________________ DOCKER DEPLOYMENT COMPLETED __________________________"

