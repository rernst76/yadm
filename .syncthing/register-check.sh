#!/bin/bash

# get the absolute path of the directory containing the register script
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# set the path to your script
SCRIPT_PATH="$SCRIPT_DIR/check-syncthing.sh"

# write the cron job schedule and command to the crontab file
echo '@reboot sleep 300 && '"$SCRIPT_PATH" > /tmp/crontab.tmp
echo '*/30 * * * * '"$SCRIPT_PATH" >> /tmp/crontab.tmp
crontab /tmp/crontab.tmp
rm /tmp/crontab.tmp

