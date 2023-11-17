#!/bin/zsh
### BEGIN INIT INFO
# Provides:          clash
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start/stop clash server
# Description:       Manages the clash server process
### END INIT INFO

cd /home/davi/Clash
./clash -d . &
