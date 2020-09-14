FROM lazzurs/jenkins-agent-amazonlinux2:latest

ARG JENKINS_AGENT_VERSION=4.3
ARG NVM_VERSION=v0.35.3
ARG NODE_VERSION=12.18.3

LABEL Description="Jenkins Agent v${JENKINS_AGENT_VERSION} on Amazon Linux 2 with Node.js v${NODE_VERSION} pre-installed"
LABEL Vendor="Catalin Piscureanu"

USER root

RUN yum update -y
RUN yum install -y glibc-langpack-en && \
    yum groupinstall -y development && \
    yum install -y which clang cmake && \
    yum clean all && \
    rm -rf /var/cache/yum

USER jenkins

ENV NVM_DIR /home/jenkins/.nvm
ENV NODE_VERSION ${NODE_VERSION}

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh | bash && \
    . ${NVM_DIR}/nvm.sh && \
    nvm install ${NODE_VERSION} && \
    nvm alias default ${NODE_VERSION} && \
    nvm use default

ENV NODE_PATH ${NVM_DIR}/versions/node/v${NODE_VERSION}/lib/node_modules
ENV PATH ${NVM_DIR}/versions/node/v${NODE_VERSION}/bin:$PATH
