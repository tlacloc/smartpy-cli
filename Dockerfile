FROM ubuntu
MAINTAINER desneruda@gmail.com 

RUN apt-get update 
RUN apt-get install -y curl 
RUN apt-get install -y python3 
RUN apt-get install -y nodejs 
RUN apt-get install -y npm 

# update node version to 16.13.1
ENV NODE_VERSION=16.13.1
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version

# install smartpy libraries
RUN curl -s https://smartpy.io/cli/install.sh -o ~/smartpy_installer.sh
RUN echo 'y' | bash ~/smartpy_installer.sh
RUN chmod +x ~/smartpy-cli/SmartPy.sh
