FROM ubuntu:18.04

MAINTAINER mrichar1 "https://github.com/mrichar1"

# Install packages for building ruby
RUN apt-get update
RUN apt-get install -y --force-yes build-essential wget git
RUN apt-get install -y --force-yes ibus python-gi python3-gi python-gobject gir1.2-glib-2.0 gir1.2-ibus-1.0 libwnck-3-0 gir1.2-wnck-3.0 libgtk-3-0 gir1.2-gtk-3.0 xvfb
RUN apt-get install -y python3-pycodestyle python3-pylint

RUN git clone https://github.com/mrichar1/clipster /root/clipster
RUN xvfb-run -a /root/clipster/.travis/run.sh



