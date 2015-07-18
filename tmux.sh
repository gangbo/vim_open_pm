#!/bin/sh
#
# name     : tmuxen, tmux environment made easy
# author   : gangbo <dagnagbo@gmail.com>
# license  : GPL
#

cmd=$(which tmux)      # tmux path
session=$(hostname -s) # session name

if [ -z $cmd ]; then
    echo "You need to install tmux."
    exit 1
fi

$cmd has -t $session 2> /dev/null

if [ $? != 0 ]; then
    $cmd new -s $session
fi

$cmd att -t $session

exit 0
