#!/bin/bash
# start-nanoclaw.sh
cd /home/kaswan/nanoclaw
npm run build
nohup /usr/bin/node dist/index.js > logs/nanoclaw.out.log 2> logs/nanoclaw.err.log &
echo $! > .nanoclaw.pid
echo "NanoClaw started with PID $(cat .nanoclaw.pid)"
