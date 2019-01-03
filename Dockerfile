FROM ubuntu:trusty

#RUN rm /bin/sh && ln -s /bin/bash /bin/sh

#ENV AZURE_CLI_VERSION "0.10.17"
#ENV NODEJS_APT_ROOT "node_6.x"
#ENV NODEJS_VERSION "6.11.3"

# RUN apt-get update -qq && \
#     apt-get install -qqy --no-install-recommends\
#     apt-transport-https \
#     build-essential \
#     curl \
#     ca-certificates \
#     git \
#     lsb-release \
#     python-all \
#     rlwrap \
#     vim \
#     nano \
#     jq && \
#     rm -rf /var/lib/apt/lists/* && \
#     curl https://deb.nodesource.com/${NODEJS_APT_ROOT}/pool/main/n/nodejs/nodejs_${NODEJS_VERSION}-1nodesource1~jessie1_amd64.deb > node.deb && \
#     dpkg -i node.deb && \
#     rm node.deb && \
#     npm install --global azure-cli@${AZURE_CLI_VERSION} && \
#     azure --completion >> ~/azure.completion.sh && \
#     echo 'source ~/azure.completion.sh' >> ~/.bashrc && \
#     azure

# Install PowerShell Core
#RUN apt-get update -qq && \
#    apt-get install -qqy --no-install-recommends\
#    curl \
#    gnupg \
#    apt-transport-https && \
#    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
#&& \
#sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list' && \
#apt-get update && \
#apt-get install -y powershell

#RUN azure config mode arm

#ENV EDITOR vim



# Install dependencies and clean up
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    wget \
    apt-utils \
    ca-certificates \
    curl \
    apt-transport-https \
    lsb-release \
    software-properties-common 
#\
#&& rm -rf /var/lib/apt/lists/*

# Install PowerShell
RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update 
#&& \

RUN apt-get install -y powershell

RUN pwsh --version

# Install Azure CLI
#RUN AZ_REPO=$(lsb_release -cs) && \
#    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
#    tee /etc/apt/sources.list.d/azure-cli.list && \
#   apt-key --keyring /etc/apt/trusted.gpg.d/Microsoft.gpg adv \
#   --keyserver packages.microsoft.com \
#    --recv-keys BC528686B50D79E339D3721CEB3E94ADBE1229CF && \
#    apt-get update && \
#    apt-get install azure-cli

#RUN az --version


