FROM ubuntu:18.04

MAINTAINER mrichar1 "https://github.com/mrichar1"

# Setup timezone to avoid tzdata pkg hanging
RUN timedatectl set-timezone UTC
RUN apt-get update
RUN apt-get install -y --force-yes build-essential wget git
RUN apt-get install -y --force-yes ibus python3-gi gir1.2-glib-2.0 gir1.2-ibus-1.0 libwnck-3-0 gir1.2-wnck-3.0 libgtk-3-0 gir1.2-gtk-3.0 xvfb
RUN apt-get install -y python3-pycodestyle pylint3

RUN git clone https://github.com/mrichar1/clipster /root/clipster
RUN xvfb-run -a /root/clipster/.travis/run.sh



