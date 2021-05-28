# docker-jenkins-agent-amazonlinux2-nodejs14

Extension of Docker image with Jenkins agent and Node.js on Amazon Linux 2.

The image is an extension to [lazzurs/jenkins-agent-amazonlinux2:latest](lazzurs/jenkins-agent-amazonlinux2).  

**Software**:
- Jenkins agent, [check version](https://github.com/lazzurs/docker-jenkins-agent-amazonlinux2/blob/master/Dockerfile#L3)
- [nvm v0.35.3](https://github.com/nvm-sh/nvm)
- [Node.js v14.17.0](https://nodejs.org/en/download/package-manager/#nvm)
- [Yarn v1.22.10](https://yarnpkg.com/getting-started/install)
- [standard-version 9.0.0](https://github.com/conventional-changelog/standard-version)
- [SonarScanner 4.4.0.2170](https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/)
- [nx workspace](https://nx.dev)
- extra system packages for Node.js native addons compilation  
