FROM ubuntu
MAINTAINER desneruda@gmail.com 

RUN apt-get update 
RUN apt-get install -y curl 
RUN apt-get install -y python3 
RUN apt-get install -y nodejs 

RUN bash <(curl -s https://smartpy.io/cli/install.sh)
RUN chmod +x ~/smartpy-cli/SmartPy.sh

CMD [“echo”,”Image created”] 

CMD [~/smartpy-cli/SmartPy.sh --version, ”Smartpy version] 


CMD ~/smartpy-cli/SmartPy.sh --version
ENTRYPOINT [ "/root/smartpy-cli/SmartPy.sh" ] 
