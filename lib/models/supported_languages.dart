import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'supported_languages.g.dart';

class LanguageCode extends EnumClass {
  static Serializer<LanguageCode> get serializer => _$languageCodeSerializer;

  const LanguageCode._(String name) : super(name);

  static BuiltSet<LanguageCode> get values => _$values;
  static LanguageCode valueOf(String name) => _$valueOf(name);
  static const LanguageCode pt = _$pt;
  static const LanguageCode fr = _$fr;
  static const LanguageCode nl = _$nl;
  static const LanguageCode it = _$it;
  static const LanguageCode br = _$br;
  static const LanguageCode fa = _$fa;
  static const LanguageCode de = _$de;
  static const LanguageCode ja = _$ja;
  static const LanguageCode es = _$es;
  static const LanguageCode hr = _$hr;
  static const LanguageCode hu = _$hu;
}
