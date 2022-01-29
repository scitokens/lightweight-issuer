#!/bin/sh

# Set the hostname
sed s+\{HOSTNAME\}+$HOSTNAME+g /opt/scitokens-server/etc/server-config.xml.tmpl > /opt/scitokens-server/etc/server-config.xml
chgrp tomcat /opt/scitokens-server/etc/server-config.xml

# Run the boot to inject the template
${QDL_HOME}/var/scripts/boot.qdl

# Start tomcat
exec /opt/tomcat/bin/catalina.sh run

