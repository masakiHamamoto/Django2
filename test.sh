#!/bin/bash

python -V
source venv/bin/activate
../venv/bin/python -V
../venv/bin/python3 -V
../venv/bin/python mybook/manage.py test