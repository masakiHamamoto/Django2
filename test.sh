#!/bin/bash

python -V
source venv/bin/activate
venv/bin/python -V
ls venv/bin/
/home/travis/virtualenv/python3.5.2/bin/python3 -V
python mybook/manage.py test