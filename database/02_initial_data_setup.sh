#!/bin/bash
DB_NAME="$POSTGRES_DB"
DB_USER="$POSTGRES_USER"

echo "start create table"
find /docker-entrypoint-initdb.d/create_table/* -type f -print0 | while IFS= read -r -d '' f; do
	psql -f $f -U $DB_USER -d $DB_NAME
    	echo
done


echo "start import data"
find /docker-entrypoint-initdb.d/initial_data/* -type f -print0 | while IFS= read -r -d '' f; do
	psql -f $f -U $DB_USER -d $DB_NAME
    	echo
done

