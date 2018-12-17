FROM ubuntu

WORKDIR /home/afh

RUN apt-get update && apt-get install -y apt-transport-https ca-certificates python3-pip python3-dev build-essential imagemagick wget unzip git curl
RUN pip3 install selenium requests pysocks urllib3 --upgrade

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

RUN apt-get update && apt-get install -y google-chrome-stable

RUN wget https://chromedriver.storage.googleapis.com/2.40/chromedriver_linux64.zip && unzip chromedriver_linux64.zip && cp chromedriver /usr/local/bin
ENV PATH=/usr/local/bin/chromedriver:$PATH

CMD ["/bin/sh"]
