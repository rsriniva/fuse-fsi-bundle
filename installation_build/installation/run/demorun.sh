#!/bin/bash

# Start Apache Derby
@@rhq.deploy.dir@@/db-derby-10.10.2.0-bin/bin/startNetworkServer > @@rhq.deploy.dir@@/derby.out &

# Start Fuse
@@rhq.deploy.dir@@/jboss-fuse-6.1.0.redhat-379/bin/start
