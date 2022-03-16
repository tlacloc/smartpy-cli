FROM ubuntu
MAINTAINER desneruda@gmail.com 

RUN apt-get update 
RUN apt-get install -y curl 
RUN apt-get install -y python3 
RUN apt-get install -y nodejs 
RUN apt-get install -y npm 


RUN curl -s https://smartpy.io/cli/install.sh -o ~/smartpy_installer.sh

RUN echo 'y' | bash ~/smartpy_installer.sh

RUN chmod +x ~/smartpy-cli/SmartPy.sh

RUN ~/smartpy-cli/SmartPy.sh --version


CMD [~/smartpy-cli/SmartPy.sh --version, version] 


CMD ~/smartpy-cli/SmartPy.sh --version
ENTRYPOINT [ "/root/smartpy-cli/SmartPy.sh" ] 
