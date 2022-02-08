FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y wget sudo curl
RUN sh <(curl -s https://smartpy.io/cli/install.sh)
RUN chmod +x ~/smartpy-cli/SmartPy.sh
