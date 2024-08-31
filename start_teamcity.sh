#!/usr/bin/env bash

docker rm -f test-teamcity-server || true
docker rm -f test-teamcity-server-db || true
docker rm -f test-teamcity-server-pgadmin || true
docker rm -f test-teamcity-agent-1 || true

docker volume rm test-teamcity-server_test-teamcity-server-data || true
docker volume rm test-teamcity-server_test-teamcity-server-logs || true
docker volume rm test-teamcity-server_test-teamcity-agent-1 || true
docker volume rm test-teamcity-server_test-teamcity-server-postgres || true
docker volume rm test-teamcity-server_test-teamcity-server-postgres-backups || true
docker volume rm test-teamcity-server_test-teamcity-server-pgadmin || true
#docker volume prune --all --force
docker volume ls

docker-compose up --force-recreate --pull missing --timestamps