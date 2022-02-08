FROM alpine:latest

RUN apk add --update npm bash curl python3
RUN /bin/bash -c "sh <(curl -s https://smartpy.io/cli/install.sh) local-install ~/smartpy-cli"
RUN /bin/bash -c "chmod +x ~/smartpy-cli/SmartPy.sh"

CMD ~/smartpy-cli/SmartPy.sh --version
ENTRYPOINT [ "/root/smartpy-cli/SmartPy.sh" ] 
