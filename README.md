# lab3
Importing Docker into registry

Create the Dockerfile
```
FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4

EXPOSE 8080 8888

$JBOSS_HOME/standalone/deployments/ROOT.war
COPY rhc-ose-license.txt $JBOSS_HOME/
```
create rhc-ose-license.txt
```
RHC Bootcamp Middleware License

This software is meets the standard set forth by the company and can be used within all deployment environments

```
run the following commands on the image master
```
oadm policy add-role-to-user system:image-builder <your user> -n openshift
oc login
token=`oc whoami -t`
docker login -u <your user> -e ankledeep@water.com -p $token <your ip>:5000
docker tag eaplicense 172.30.200.172:5000/openshift/eaplicense
docker push 172.30.200.172:5000/openshift/eaplicense
```

ref:  http://www.opensourcerers.org/importing-an-external-docker-image-into-red-hat-openshift-v3/
