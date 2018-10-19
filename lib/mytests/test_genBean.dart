import 'package:json_object_convert_help/json_object_convert_help.dart';
import 'package:sqflite_example_build/mytests/enum_one.dart';
part 'test_genBean.json.dart';


@GenConvertFile()
class TestAAA {
  final int count;
  final int total;
  final String name;
//  String name4;
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
