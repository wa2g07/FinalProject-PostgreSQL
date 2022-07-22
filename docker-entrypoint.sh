#!/usr/bin/env bash

if [ $# -gt 0 ]; then
    for arg in "$@"; do
        case $arg in
            --reset)
                echo "RESETTING DATABASE ..."
                rm -rf /var/lib/postgresql/data/*
            ;;
        esac
    done
fi

exec /usr/local/bin/docker-entrypoint.sh postgres

