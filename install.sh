#!/bin/bash

# rhq-ant input properties:
# rhq.deploy.dir is the installation directory for Fuse and the necessary projects.

if [ "x$JAVA_HOME" = "x" ]; then
  echo "Please set your JAVA_HOME environment variable."
  exit 1
fi

if [ ! -f installation.zip ]; then
  cd installation_build
  zip -r ../installation.zip installation
  cd ..
fi

export PATH="`pwd`/installer/bin:$JAVA_HOME/bin:$PATH"
/bin/chmod 775 installer/bin/rhq-ant
rhq-ant -Drhq.deploy.dir=/tmp/jboss-demos/fuse-fsi-demo -Drhq.deploy.clean=false
