From ubuntu:16.04

ENV LC_ALL C.UTF-8
ENV PYTHONIOENCODING UTF-8
ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y dialog apt-utils 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python3-all && \
    apt-get -y install python3-pip 
RUN pip3 install requests && \
     pip3 install pytest
