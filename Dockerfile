FROM ubuntu
MAINTAINER desneruda@gmail.com 

RUN apt-get update 
RUN apt-get install -y curl 
RUN apt-get install -y python3 
RUN apt-get install -y nodejs 
RUN apt-get install -y npm 

# download latest nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# after installing restart shell or add export variables for nvm to work

ENV NVM_DIR=/root/.nvm
ENV NODE_VERSION=16.13.1

# then install the newer node version
RUN . $HOME/.nvm/nvm.sh && nvm install $NODE_VERSION && nvm alias default $NODE_VERSION && nvm use default

RUN curl -s https://smartpy.io/cli/install.sh -o ~/smartpy_installer.sh
RUN echo 'y' | bash ~/smartpy_installer.sh
RUN chmod +x ~/smartpy-cli/SmartPy.sh

USER root
