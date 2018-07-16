FROM python:2.7.15-slim-stretch
LABEL MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

WORKDIR /usr/src/Belati

COPY . .

RUN apt-get update \
    && apt-get install -y git python python-pip nmap exiftool gcc \
    && git submodule update --init --recursive --remote \
    && pip install --no-cache-dir -r requirements.txt
    
ENTRYPOINT ["python","Belati.py"]

CMD ["--help"]

EXPOSE 8000
