FROM debian:buster

RUN apt-get update -qy \
&& apt-get upgrade -qy
