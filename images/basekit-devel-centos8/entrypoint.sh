#!/bin/bash

# save args
entrypoint_args=("$@")
# clear args
set --

PS1='[\u@\h \W]\$ '
source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1

exec "${entrypoint_args[@]}"
