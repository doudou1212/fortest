#!/bin/bash
set -e

RUBY_VERSION=$(grep -o -E "[0-9]+([.][0-9]+){1,2}" .ruby-version)

echo "Looking for ruby version ${RUBY_VERSION}"

[[ -f /usr/share/chruby/chruby.sh ]] && source /usr/share/chruby/chruby.sh
chruby ruby-${RUBY_VERSION}
echo "Using ruby version $(ruby -v) from $(type ruby)"

gem install --conservative --no-rdoc --no-ri bundler
echo "Using bundler version $(bundle -v)"
