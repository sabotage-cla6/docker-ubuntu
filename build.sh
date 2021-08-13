#! /bin/bash

cd `dirname $0`

docker build ./base -t sabotagecla6/ubuntu
docker build ./ui -f ./ui/Dockerfile -t sabotagecla6/ubuntu-ui
docker build ./ui -f ./ui/Dockerfile_JP -t sabotagecla6/ubuntu-ui:jp
