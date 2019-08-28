#!/bin/bash
echo maven-project >/tmp/.auth
echo $BUILD_TAG >>/tmp/.auth
echo $PASS >>/tmp/.auth

scp -i $HOME/prod /tmp/.auth prod-user@172.31.41.58:/tmp/.auth
scp -i $HOME/prod ./jenkins/deploy/publish  prod-user@172.31.41.58:/tmp/publish
ssh -i $HOME/prod prod-user@172.31.41.58 "/tmp/publish"
