FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4

EXPOSE 8080 8888

RUN curl -L https://github.com/zer0glitch/lab3/blob/eap-openshift-rhc-license/war/ticket-monster.war?raw=true -o $JBOSS_HOME/standalone/deployments/ROOT.war
RUN cp /home/jboss/source/rhc-ose-license.txt $JBOSS_HOME/

