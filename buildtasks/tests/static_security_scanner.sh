#!/usr/bin/env bash
set -ex
if [[ "$STATIC_ANALYSIS_ENV" != 'bamboo-build' ]]; then
   git stash -q --keep-index
fi
dawn -s -z .
RESULT=$?
echo $RESULT
if [[ "$STATIC_ANALYSIS_ENV" != 'bamboo-build' ]]; then
   git stash pop -q
fi
[ $RESULT -ne 0 ] && exit 1
exit 0
