# #!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "postgres" <<-EOSQL
	CREATE USER teamcity
	  WITH PASSWORD '${TEAMCITY_DB_PASSWORD}';

	CREATE DATABASE teamcity
	  WITH OWNER "teamcity"
    ENCODING 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8';

	GRANT ALL PRIVILEGES ON DATABASE teamcity TO teamcity;
EOSQL
