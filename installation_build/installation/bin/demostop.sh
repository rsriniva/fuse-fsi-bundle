#!/bin/bash

# Stop Apache Derby
@@rhq.deploy.dir@@/db-derby-10.10.2.0-bin/bin/stopNetworkServer

# Stop Fuse
@@rhq.deploy.dir@@/jboss-fuse-6.1.0.redhat-379/bin/stop
