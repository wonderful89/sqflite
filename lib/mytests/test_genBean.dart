import 'package:json_object_convert_help/json_object_convert_help.dart';
part 'test_genBean.json.dart';

enum EnumTypeOne {
  red,
  blue,
  green,
}

@GenConvertFile()
class TestAAA {
  final int count;
  final int total;
  final String name;
  final Map msgMap;
  EnumTypeOne enumTypeOne;
  TestAAA({
    this.count,
    this.total,
    this.name,
    this.msgMap,
    this.enumTypeOne = EnumTypeOne.red,
  });

  @override
  String toString() {
    return '[name = $name, total = $total, enumTypeOne = $enumTypeOne, msgMap = $msgMap]';
  }
}
