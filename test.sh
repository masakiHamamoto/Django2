#!/bin/bash

source venv/bin/activate
venv/bin/python -V
ls venv/bin/
cd mybook
python manage.py test