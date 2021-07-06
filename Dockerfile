FROM debian/eol:sarge

RUN apt-get update -y
RUN apt-get install -y gcc
