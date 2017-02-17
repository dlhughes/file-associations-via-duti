#!/bin/bash

appid=$4
type=$5

sudo -u $3 /usr/local/bin/duti -s $appid $type all

exit 0
