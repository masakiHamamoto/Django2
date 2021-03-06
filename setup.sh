#!/bin/bash

function virtualenv_install {
    echo "Installing virtualenv, it may ask for SUDO password"
    sudo pip install virtualenv
    pip install --upgrade pip
}

function virtualenv_dep_install {

    if [ ! -d venv/bin ]; then
#         python3 -m venv venv
	virtualenv venv 
	echo "Created virtual environment"
    fi
    if [ ! -f venv/updated ]; then
	source venv/bin/activate
	pip install -r requirements.txt
	touch venv/updated
	echo "Installed python packages"
	deactivate
    fi
}

if [ ! -z `which virtualenv` ]; then
    virtualenv_install
fi

virtualenv_dep_install
echo "Now performing Django tasks"
pwd
source venv/bin/activate
cd mybook
python manage.py makemigrations
python manage.py migrate
deactivate


