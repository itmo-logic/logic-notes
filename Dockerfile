FROM ubuntu:cosmic

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TERM=dumb \
    DEBIAN_FRONTEND=noninteractive \
    INITRD=No

RUN apt-get update -qq && apt-get upgrade -qq && \
    apt-get install -y --no-install-recommends fontconfig openssh-client git texlive-full rubber make && \
    rm -rf /var/lib/apt/lists/* && apt-get clean

WORKDIR /home
