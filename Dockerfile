FROM microsoft/azure-cli

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

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
RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends\
    curl gnupg apt-transport-https 
#&& \
#curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
#sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list' && \
#apt-get update && \
#apt-get install -y powershell

#RUN azure config mode arm

#ENV EDITOR vim