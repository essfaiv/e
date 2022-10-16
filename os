#!/bin/bash

OS_DESCRIPTION=
export DEBIAN_FRONTEND=noninteractive

[ -e '/bin/uname' ] && uname='/bin/uname' || uname='/usr/bin/uname'
OPERATING_SYSTEM=`uname -s`
if [ "$OPERATING_SYSTEM" = 'Linux' ]; then
  if [ -e '/etc/debian_version' ]; then
    if [ -e '/etc/lsb-release' ]; then
      . /etc/lsb-release
      OS_DESCRIPTION=$DISTRIB_DESCRIPTION
    fi
  fi
fi

echo "os=$OS_DESCRIPTION"
