#! /bin/bash

# sudo lsof -i tcp:5432
yarn add jquery @popperjs/core
# systemctl status redis -b 0.0.0.0
rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0
