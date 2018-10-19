// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_genBean.dart';

// **************************************************************************
// Generator: BeanGenerator2
// **************************************************************************

EnumTypeOne _buildEnumTypeOne(int index) {
  try {
    return EnumTypeOne.values[index];
  } catch (e) {
    return null;
  }
}

class TestAAAConverter {
  static TestAAA toObj(obj) {
    if (obj is Map) {
      return new TestAAA(
        count: obj['count'],
        total: obj['total'],
        name: obj['name'],
        enumTypeOne: _buildEnumTypeOne(obj['enumTypeOne'] ?? 0),
      );
    } else {
      print('TestAAA toObj fail: obj = $obj');
    }
    return null;
  }

  static Map<String, dynamic> toMap(TestAAA obj) {
    if (obj is TestAAA) {
      return {
        'count': obj.count,
        'total': obj.total,
        'name': obj.name,
        'enumTypeOne': obj.enumTypeOne.index,
      };
    } else {
      print('TestAAA toMap fail, obj = $obj');
    }
    return {};
  }
}
