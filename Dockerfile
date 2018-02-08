FROM mbevins/node:1.0

RUN apt-get install socat

ARG NPM_TOKEN

RUN mkdir /src

COPY . /src


RUN cd /src
#CMD ["/bin/bash", "/src/run_script.sh"]
ENTRYPOINT ["/usr/bin/supervisord", "-c", "/src/supervisord.conf"]
