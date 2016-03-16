source buildtasks/setup_ruby.sh
bundle config build.nokogiri --use-system-libraries
bundle install
overcommit --install
overcommit --sign || true
overcommit --sign pre-commit
overcommit --run
