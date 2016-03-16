#!/usr/bin/env bash
set -ex
source buildtasks/app_config.sh
mkdir -p spec/pacts/

source buildtasks/tests/run_migrate.sh

APP_DB_PASSWORD="changeme" STAGE="test" bundle exec rake "$@"
