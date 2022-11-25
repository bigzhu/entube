source .env
gq https://jysijxgffjwavdtqcuir.nhost.run/v1/graphql -H "x-hasura-admin-secret: $HASURA_GRAPHQL_ADMIN_SECRET" --introspect > lib/graphql/schema.graphql
#npm run flutter-freezed
#get-graphql-schema https://jysijxgffjwavdtqcuir.nhost.run/v1/graphql -H "x-hasura-admin-secret: $HASURA_GRAPHQL_ADMIN_SECRET" > lib/graphql/schema.graphql
flutter pub run build_runner build --delete-conflicting-outputs
