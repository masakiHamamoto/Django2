#!/bin/bash

python -V
source venv/bin/activate
venv/bin/python -V
venv/bin/python2 -V
venv/bin/python2.7 -V
ls venv/bin/
/home/travis/virtualenv/python3.5.2/bin/python3 -V
python mybook/manage.py test