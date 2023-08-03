#!/bin/bash

cd ~/pe-portfolio-site-clone-1

git fetch && git reset origin/main --hard

source python3-virtualenv/bin/activate
pip install -r requirements.txt

systemctl restart myportfolio