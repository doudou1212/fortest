#!/usr/bin/env bash
set -ex
echo "fsfss"
dawn -z .
RESULT=$?
echo $RESULT
[ $RESULT -ne 0 ] && exit 1
exit 0
