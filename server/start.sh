#!/bin/bash

function kill_process_by_name() {
    pattern=$1
    pids=$(ps aux | grep "$pattern" | grep -v grep | awk '{print $2}')
    for pid in $pids; do
        kill -9 $pid
        echo "Killed process $pid"
    done
}

kill_process_by_name "server"
kill_process_by_name "node_server.js"

if [[ "$1" == "-x" ]]; then
    exit
fi

./server &
node node_server.js
