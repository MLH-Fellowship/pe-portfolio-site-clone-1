#FROM quay.io/centos/centos:stream8

#RUN dnf install -y python3.9

FROM python:3.9-slim-buster

WORKDIR ./PE-PORTFOLIO-SITE-CLONE-1

COPY requirements.txt .

#COPY . .

RUN pip3 install -r requirements.txt

COPY . .

CMD ["flask", "run", "--host=0.0.0.0"]

EXPOSE 5000
