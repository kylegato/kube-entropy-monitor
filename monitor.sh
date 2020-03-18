#!/bin/bash

# Locate the cat tool
CAT_TOOL_BIN=`which cat`
# ENTROPY SOURCE FILE
ENTROPY_FILE=/proc/sys/kernel/random/entropy_avail
# Duration to wait between checks, in seconds
SLEEP_DURATION=5

NODE_NAME=${MY_NODE_NAME}

# Run the check
while true ; do
        echo "`date +%s` - `date` - $NODE_NAME - available_entropy=`$CAT_TOOL_BIN $ENTROPY_FILE`"
	sleep $SLEEP_DURATION
done
