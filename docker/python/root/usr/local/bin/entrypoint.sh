#!/bin/bash -x

cd /var/www/html
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

python -u -m debugpy --listen 0.0.0.0:5678 app.py 

#tail -f /dev/null