#!/bin/bash

source venv/bin/activate
venv/bin/python -V
python -V
cd mybook
python manage.py test