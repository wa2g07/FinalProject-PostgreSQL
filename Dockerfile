FROM postgres:12

ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_USER=wa2g07
ENV POSTGRES_DB=postgres 
ENV POSTGRES_LOGIN_SERVICE_DB=loginservice

COPY ./scripts/* /docker-entrypoint-initdb.d/
COPY ./docker-entrypoint.sh ./docker-entrypoint.sh
RUN chmod +x ./docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]