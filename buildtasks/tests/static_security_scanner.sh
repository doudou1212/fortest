#!/usr/bin/env bash
set -ex
dawn -z .
RESULT=$?
echo $RESULT
[ $RESULT -ne 0 ] && exit 1
exit 0
