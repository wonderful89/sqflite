library json_object_convert;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/hook/hook.dart';
import 'src/hook/enum.dart';

Builder entryPoint(BuilderOptions options) {
  var header = options.config['header'] as String;
  return PartBuilder([ConvertGenerator()], '.json.dart', header: header);
}

Builder entryPoint2(BuilderOptions options) {
  var header = options.config['header'] as String;
  return PartBuilder([EnumGenerator()], '.build.dart', header: header);
}
