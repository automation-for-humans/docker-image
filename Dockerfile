FROM python:3.7-alpine3.8

WORKDIR /home/afh

RUN apk update && apk add imagemagick wget unzip git curl vim openssh ca-certificates gcc g++ flex bison make
RUN pip3 install selenium requests pysocks urllib3 --upgrade

# https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.7-alpine3.8/Dockerfile
# update apk repo
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories

# install chromedriver
RUN apk update
RUN apk add chromium chromium-chromedriver

CMD ["/bin/sh"]
