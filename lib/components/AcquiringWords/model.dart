import 'package:leancloud_storage/leancloud.dart';

class AcquiringWordModel extends LCObject {
  LCUser get owner => this['owner'];
  String get word => this['word'];
  int get count => this['count'];
  bool? get done => this['done'];

  set owner(LCUser value) => this['owner'] = value;
  set word(String value) => this['word'] = value;
  set count(int value) => this['count'] = value;
  set done(bool? value) => this['done'] = value;

  AcquiringWordModel() : super('AcquiringWord');
}
