#!/bin/bash

python -V
source venv/bin/activate
venv/bin/python -V
ls venv/bin/
venv/bin/python mybook/manage.py test