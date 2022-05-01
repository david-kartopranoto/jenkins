#!/bin/bash

echo maven-dummy > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@prod-host.com:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish prod-user@prod-host.com:/tmp/publish
ssh -i /opt/prod prod-user@prod-host.com "/tmp/publish"