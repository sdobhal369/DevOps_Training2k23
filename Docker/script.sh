#!/bin/bash

apt update && apt install -y iputils-ping
echo "testing install ping tool"
ping www.google.com
sleep 250