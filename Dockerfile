FROM debian:stretch-slim
LABEL MAINTAINER "Chandrapal <bnchandrapal@protonmail.com>"

WORKDIR /usr/src/Belati

COPY . .

RUN apt-get update \
    && apt-get install -y git python python-pip nmap exiftool \
    && pip install --no-cache-dir --upgrade -r requirements.txt
    
ENTRYPOINT ["python","Belati.py"]    

CMD ["--help"]

EXPOSE 8000
