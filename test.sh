#!/bin/bash

source venv/bin/activate
python -V

cd mybook
python manage.py test