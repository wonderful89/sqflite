library json_object_convert;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/hook/hook.dart';

Builder entryPoint(BuilderOptions options) {
  var header = options.config['header'] as String;
  return PartBuilder([BeanGenerator2()], '.json.dart', header: header);
}
