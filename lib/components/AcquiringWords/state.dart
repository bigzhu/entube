final acquiringWordsStreamP = Provider((ref) {
  final articlesReq = GArticleItemsReq(
    (b) => b
      ..vars.limit = 10
      ..vars.offset = 0,
  );
  final client = ref.watch(gqlClientP);
  return client.request(articlesReq);
});
