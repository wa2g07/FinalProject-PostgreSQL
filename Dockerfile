FROM postgres:12

ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=postgres 

COPY ./scripts/* /docker-entrypoint-initdb.d/

