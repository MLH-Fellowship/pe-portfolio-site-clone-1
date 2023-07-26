#!/bin/bash

tmux kill-session -t webserver

cd /root/pe-portfolio-site-clone-1

git fetch && git reset origin/main --hard

source python3-virtualenv/bin/activate
pip install -r requirements.txt

tmux new-session -s webserver

export FLASK_ENV=development

flask run

systemctl restart myportfolio