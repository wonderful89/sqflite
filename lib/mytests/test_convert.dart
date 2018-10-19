import 'package:sqflite_example/mytests/test_genBean.dart';

void test() {
  TestAAA testAAA = new TestAAA(
    count: 100,
    total: 101,
    name: 'name1',
    enumTypeOne: EnumTypeOne.blue,
    msgMap: {},
  );

  Map<String, dynamic> map = TestAAAConverter.toMap(testAAA);
  print('map = $map');

  var newObj = TestAAAConverter.toObj(map);
  print('newObj = $newObj');
}
