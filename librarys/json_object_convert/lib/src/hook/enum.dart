import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';
import 'package:json_object_convert_help/json_object_convert_help.dart';

bool canDirectoryConvertFieldElement({FieldElement fieldElement}) {
  bool retValue = false;
  var containNames = ['int', 'String', 'double'];
  var typeName = fieldElement.type.name;
  if (containNames.contains(typeName)) {
    retValue = true;
  }
  return retValue;
}

bool isEnumType({FieldElement fieldElement}) {
  var typeName = fieldElement.type.name;
  if (typeName.contains('Enum') || typeName.contains('enum')) {
    return true;
  }
  return false;
}

class EnumGenerator extends GeneratorForAnnotation<GenEnumBuild> {
  const EnumGenerator();

  /// This method is called when build finds an element with
  /// [GenSerializer] annotation.
  ///
  /// [element] is the element annotated with [Api]
  /// [api] is an instantiation of the [Api] annotation
  @override
  Future<String> generateForAnnotatedElement(
      final Element element, ConstantReader annot, BuildStep buildStep) async {
    try {
      if (element is! ClassElement) {
        throw new Exception(
            "GenBean annotation can only be defined on a class.");
      }

      final String className = element.name;
      ClassElement classElement = element as ClassElement;

      print("-------------------Generating bean for $className ...");
//      print("classElement = $classElement ...");
//      print("classElement.fields = ${classElement.fields} ...");
      var classHeaderString = '';
      for (FieldElement item in classElement.fields) {
//        print(
//            "element ${item.id} || ${item.name} || ${item.isStatic} || ${item.type}");
//        print('${item.name} :item.isEnumConstant = ${item.isEnumConstant}');
        var fieldName = item.name;
        classHeaderString = '''
          ${item.type.name} build${item.type.name}(int index) {
            try {
              return ${item.type.name}.values[index];
            } catch (e) {
              return null;
            }
          }
                ''';
      }

      return '''
${classHeaderString}
      ''';
    } catch (e, s) {
      return '/*\n$e\n$s\n*/';
    }
  }
}
