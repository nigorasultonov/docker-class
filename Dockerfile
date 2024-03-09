FROM alpine:3.19.0

RUN adduser -D dev
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER dev
WORKDIR /home/dev

ARG VAR1="This is a var in Docker File"

ENV VAR2="This is var for container"

ADD script.sh .

RUN mkdir logs

ENTRYPOINT sh script.sh 
