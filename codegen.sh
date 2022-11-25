source .env
gq https://jysijxgffjwavdtqcuir.nhost.run/v1/graphql -H "x-hasura-admin-secret: $HASURA_GRAPHQL_ADMIN_SECRET" --introspect > lib/graphql/schema.graphql
#npm run flutter-freezed
flutter pub run build_runner build --delete-conflicting-outputs
