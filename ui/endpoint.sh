#!/bin/bash -e

if [ -e /opt/initilize.sh ]; then
    . /opt/initilize.sh
fi


exec "$@"

