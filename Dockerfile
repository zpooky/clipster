FROM ubuntu:18.04

MAINTAINER mrichar1 "https://github.com/mrichar1"

# Avoid questions during apt/dpkg installs
ENV DEBIAN_FRONTEND=noninteractive

# Install required python deps and tools
RUN apt-get update -y
RUN apt-get install -y ibus python3-gi gir1.2-glib-2.0 gir1.2-ibus-1.0 libwnck-3-0 gir1.2-wnck-3.0 libgtk-3-0 gir1.2-gtk-3.0 xvfb python3-pycodestyle pycodestyle pylint3

COPY clipster /clipster/
COPY tests/ /clipster/
COPY .travis/run.sh /clipster/
CMD /usr/bin/xvfb-run -a /clipster/run.sh


