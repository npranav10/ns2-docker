FROM ubuntu:18.04

MAINTAINER Pranav N "npranav10@gmail.com"

RUN apt-get update 
RUN printf 'y\ny\n6\n44\n' | apt-get install nam ns2
# first y=acceptfornam second y=acceptforns2 6=asia 44=kolkata

# download sample tcl code 
RUN apt-get install -y wget
RUN wget http://nile.wpi.edu/NS/Example/ns-simple.tcl
