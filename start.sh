#!/bin/bash

PROJECT_DIR=/mnt/disk/dapp_dcrypted
YARN_EXECUTABLE=/usr/bin/yarn

cd $PROJECT_DIR

$YARN_EXECUTABLE start-backend 2>&1 > .log/backend.log &
sleep 5
$YARN_EXECUTABLE start-frontend 2>&1 > .log/frontend.log &

