#!/bin/bash -x

cd /var/www/html
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

python manage.py migrate
RUN_SERVER=yes python manage.py runserver 0.0.0.0:9000

#tail -f /dev/null