#!/usr/bin/env bash
set -ex
echo "set -ex"
dawn -z .
echo "after dawn"
RESULT=$?
echo $RESULT
[ $RESULT -ne 0 ] && exit 1
exit 0
