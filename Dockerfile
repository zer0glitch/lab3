FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4

EXPOSE 8080 8888

#RUN curl -L https://github.com/zer0glitch/lab3/raw/master/war/ticket-monster.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
RUN git clone https://github.com/zer0glitch/lab3.git
RUN cp lab3/war/ticket-monster.war -o $JBOSS_HOME/standalone/deployments/ROOT.war

