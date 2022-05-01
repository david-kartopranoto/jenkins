#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-dummy"

echo "** Logging in ***"
docker login -u dkartopr -p $DOCKER_PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG dkartopr/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push dkartopr/$IMAGE:$BUILD_TAG