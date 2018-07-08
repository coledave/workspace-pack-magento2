#!/bin/bash

# fix permissions
usermod  -u $(stat -c '%u' /app) build
groupmod -g $(stat -c '%g' /app) build
chown -R build:build /home/build

# nothing more to do but we want to keep the container running
sleep infinity
