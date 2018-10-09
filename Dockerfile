FROM jenkins/jenkins:lts
#ENV JENKINS_HOME /var/jenkins_home
#ENV CASC_CONFIGS_FOLDER ${JENKINS_HOME}/casc_configs
#RUN mkdir -p ${CASC_CONFIGS_FOLDER}
#ENV CASC_JENKINS_CONFIG ${CASC_CONFIGS_FOLDER}/jenkins.yaml
#COPY jenkins.yaml ${CASC_JENKINS_CONFIG}
ENV CASC_JENKINS_CONFIG https://raw.githubusercontent.com/inafevwork/jenkins-casc/master/jenkins.yaml
USER jenkins
RUN /usr/local/bin/install-plugins.sh configuration-as-code configuration-as-code-support git workflow-cps-global-lib
