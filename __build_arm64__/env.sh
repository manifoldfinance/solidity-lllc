#!/usr/bin/env bash
set -e

dir=`dirname "$0"`
progname=`basename "$0"`

host=${progname%-cmake}
if test "$host" = "osxcross" ; then
   echo "Do not invoke this script directly."
   exit 1
fi

eval "`$dir/$host-osxcross-conf`"
export OSXCROSS_HOST="$host"
