#!/bin/bash

apt update && apt install -y iputils-ping
echo "testing the ping tool if it correctly installed or not!!!"
ping www.google.com
