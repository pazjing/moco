FROM frolvlad/alpine-oraclejdk8:slim

WORKDIR  /apimock

ADD moco-runner-0.11.0-standalone.jar /apimock/

EXPOSE 8091

COPY *.json /apimock/
COPY *.response /apimock/

ADD start-docker.sh /apimock/
RUN sh -c 'touch /apimock/start-docker.sh'
RUN sh -c 'chmod +x /apimock/start-docker.sh'

RUN sh -c 'touch /apimock/moco-runner-0.11.0-standalone.jar'
RUN sh -c 'chmod +x /apimock/moco-runner-0.11.0-standalone.jar'

ENTRYPOINT ["sh", "/apimock/start-docker.sh"]
