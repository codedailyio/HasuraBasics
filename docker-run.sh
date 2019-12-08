#! /bin/bash
docker run -d -p 8080:8080 \
       -e HASURA_GRAPHQL_DATABASE_URL=postgres://postgres:@host.docker.internal:5432/test \
       -e HASURA_GRAPHQL_ENABLE_CONSOLE=false \
       -e HASURA_GRAPHQL_ADMIN_SECRET="secret" \
       hasura/graphql-engine:v1.0.0-rc.1