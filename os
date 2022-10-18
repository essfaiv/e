#!/bin/bash

OS=

export DEBIAN_FRONTEND=noninteractive

[ -e '/bin/uname' ] && uname='/bin/uname' || uname='/usr/bin/uname'
UNAMES=`uname -s`
if [ "$UNAMES" = 'Linux' ]; then
  if [ -e '/etc/debian_version' ]; then
    if [ -e '/etc/lsb-release' ]; then
      . /etc/lsb-release
      OS=$DISTRIB_DESCRIPTION
    fi
  fi
fi

echo $OS
