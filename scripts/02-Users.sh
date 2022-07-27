#!/usr/bin/env bash

psql -U "$POSTGRES_USER" -c '
create table users (
    id        bigint  not null primary key,
    activated boolean not null,
    email     varchar(255),
    password  varchar(255),
    roles     varchar(255),
    username  varchar(255)
)' "$POSTGRES_LOGIN_SERVICE_DB"
echo 'Created table users'

psql -U "$POSTGRES_USER" -c '
insert into users (id, activated, email, password, roles, username) 
values (1, TRUE, '"'"'admin'"'"', '"'"'$2a$12$Sq2r0MiAzhog1ApiwT/DWe6JS8Nert8v27EjObfbK5GRu2LrIV12G'"'"', '"'"'SUPERADMIN'"'"', '"'"'admin'"'"');' "$POSTGRES_LOGIN_SERVICE_DB"
echo 'Added admin user'

