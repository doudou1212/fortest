#!/usr/bin/env bash
set -ex
echo "set -ex"
dawn -s -z .
echo "after dawn"
RESULT=$?
echo $RESULT
[ $RESULT -ne 0 ] && exit 1
exit 0
