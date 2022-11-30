import 'package:leancloud_storage/leancloud.dart';
import 'package:AcquireEnglish/components/Auth/index.dart';
import './model.dart';

class AcquiringWordService {
  Future<List<AcquiringWordModel>?> fetchAcquiringWords(int skip) async {
    LCQuery<AcquiringWordModel> query = LCQuery('AcquiringWord');
    query.whereEqualTo('owner', await getUser());
    //query.whereNotEqualTo('done', true);
    query.orderByDescending('createdAt');
    query.limit(1000);
    query.skip(skip);
    List<AcquiringWordModel>? acquiringWords = await query.find();
    return acquiringWords;
  }

  Future<List<AcquiringWordModel>?> fetchAllAcquiringWords() async {
    List<AcquiringWordModel> all = [];
    List<AcquiringWordModel>? acquiringWords = await fetchAcquiringWords(0);
    while (acquiringWords != null && acquiringWords.length == 1000) {
      all = [...all, ...acquiringWords];
      acquiringWords = await fetchAcquiringWords(all.length);
    }
    if (acquiringWords != null) {
      all = [...all, ...acquiringWords];
    }
    return all;
  }

  Future<AcquiringWordModel?> getAcquiringWord(String word) async {
    LCQuery<AcquiringWordModel> query = LCQuery('AcquiringWord');
    query.whereEqualTo('owner', await getUser());
    query.whereEqualTo('word', word);
    AcquiringWordModel? acquiringWord = await query.first();
    return acquiringWord;
  }

  Future<AcquiringWordModel> add(String word) async {
    word = word.toLowerCase();
    AcquiringWordModel acquiringWord = AcquiringWordModel();
    acquiringWord.word = word;
    acquiringWord.done = false;
    acquiringWord.count = 1;
    acquiringWord.owner = await getUser();
    await acquiringWord.save();
    return acquiringWord;
  }
}
