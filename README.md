# docker-jenkins-agent-amazonlinux2-nodejs
Docker image with Jenkins agent and Node.js on Amazon Linux 2.  
The image is an extension to [lazzurs/jenkins-agent-amazonlinux2:latest](lazzurs/jenkins-agent-amazonlinux2).  

**Software**:
- Jenkins agent, [check version](https://github.com/lazzurs/docker-jenkins-agent-amazonlinux2/blob/master/Dockerfile#L3)
- [nvm v0.35.3](https://github.com/nvm-sh/nvm)
- [Node.js v12.18.3](https://nodejs.org/en/download/package-manager/#nvm)
- [standard-version 9.0.0](https://github.com/conventional-changelog/standard-version)
- [SonarScanner 4.4.0.2170](https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/)
- extra system packages for Node.js native addons compilation  
