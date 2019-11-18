#!/bin/bash

# save args
entrypoint_args=("$@")
# clear args
set --

PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\w\$'
source /opt/intel/inteloneapi/setvars.sh > /dev/null

exec "${entrypoint_args[@]}"
