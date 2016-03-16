#!/usr/bin/env bash
source buildtasks/setup_ruby.sh
bundle config build.nokogiri --use-system-libraries
bundle install

APP_DB_PASSWORD="changeme" RACK_ENV="test" bundle exec rake db:create db:migrate
