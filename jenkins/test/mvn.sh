#!/bin/bash

echo "****************"
echo "** testing********"
echo ")))))))))))))))))))))))"

WORKSPACE=/home/ec2-user/jenkins_data/jenkins_home/workspace/pipeline-test

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/ -w /app maven:3-alpine "$@"
