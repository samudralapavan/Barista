#!/bin/bash

<< task
Deployoment the Django Code
using an error handling
task

echo "++++++++++++++++++++++++ DEPLOYMENT STARTED++++++++++++++++++++++++++++++++++++++"
clone_code () {
	echo "Cloning the code from git hub"
	git clone https://github.com/samudralapavan/django-notes-app.git

}
install_requires () {
	sudo apt update
	sudo apt install docker.io nginx -y 

}
restart_services () {
	sudo systemctl restart nginx
}
deploy () {
	sudo docker build -t notes-app ~/django-notes-app/.
	sudo docker-compose up -d
#sudo docker run -itd --name Djnago -p 8001:8000 notes-app
}

if ! clone_code; then
	echo " The code has been cloned"
	echo "The code has been pulled with updated code"
	cd django-notes-app && git pull
	#exit 1
fi

if ! install_requires; then
       echo " the requirements has been installed"
	exit 1
fi

if ! restart_services; then
	echo "The services has been restarted....."
	#exit 1
fi
deploy
echo "+++++++++++++++++++++++++ DEPLOYMENT COMPLETED ++++++++++++++++++++++++++++++++++++"

