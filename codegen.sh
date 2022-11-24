source .env
gq https://jysijxgffjwavdtqcuir.nhost.run/v1/graphql -H "x-hasura-admin-secret: $HASURA_GRAPHQL_ADMIN_SECRET" --introspect > schema.graphql
npm run flutter-freezed
