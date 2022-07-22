#!/usr/bin/env bash

psql --username="$POSTGRES_USER" -c "CREATE DATABASE $POSTGRES_LOGIN_SERVICE_DB;"