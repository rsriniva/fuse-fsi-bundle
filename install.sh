#!/bin/bash

# rhq-ant input properties:
# rhq.deploy.dir is the installation directory for Fuse and the necessary projects.

if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
fi

if [ "x$JAVA_HOME" = "x" ]; then
  echo "Please set your JAVA_HOME environment variable."
  exit 1
fi

if [ ! -f installation.zip ]; then
  echo "Please build the installation.zip prior to running the install"
  exit 1
fi

export PATH="`pwd`/installer/bin:$JAVA_HOME/bin:$PATH"
/bin/chmod 775 installer/bin/rhq-ant
rhq-ant -Drhq.deploy.dir=/tmp/jboss-demos/fuse-fsi-demo -Drhq.deploy.clean=false -Drun.maven.builds=y
