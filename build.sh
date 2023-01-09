#! /bin/bash

cd `dirname $0`

docker build ./base -t sabotagecla6/ubuntu
docker build ./base -t sabotagecla6/ubuntu:20.04
docker build ./ui -f ./ui/Dockerfile -t sabotagecla6/ubuntu-ui
docker build ./ui -f ./ui/Dockerfile -t sabotagecla6/ubuntu-ui:20.04
docker build ./ui -f ./ui/Dockerfile_JP -t sabotagecla6/ubuntu-ui-jp
docker build ./ui -f ./ui/Dockerfile_JP -t sabotagecla6/ubuntu-ui-jp:20.04
