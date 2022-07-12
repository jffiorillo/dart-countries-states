// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supported_languages.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LanguageCode _$pt = const LanguageCode._('pt');
const LanguageCode _$fr = const LanguageCode._('fr');
const LanguageCode _$nl = const LanguageCode._('nl');
const LanguageCode _$it = const LanguageCode._('it');
const LanguageCode _$br = const LanguageCode._('br');
const LanguageCode _$fa = const LanguageCode._('fa');
const LanguageCode _$de = const LanguageCode._('de');
const LanguageCode _$ja = const LanguageCode._('ja');
const LanguageCode _$es = const LanguageCode._('es');
const LanguageCode _$hr = const LanguageCode._('hr');
const LanguageCode _$hu = const LanguageCode._('hu');

LanguageCode _$valueOf(String name) {
  switch (name) {
    case 'pt':
      return _$pt;
    case 'fr':
      return _$fr;
    case 'nl':
      return _$nl;
    case 'it':
      return _$it;
    case 'br':
      return _$br;
    case 'fa':
      return _$fa;
    case 'de':
      return _$de;
    case 'ja':
      return _$ja;
    case 'es':
      return _$es;
    case 'hr':
      return _$hr;
    case 'hu':
      return _$hu;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LanguageCode> _$values =
    new BuiltSet<LanguageCode>(const <LanguageCode>[
  _$pt,
  _$fr,
  _$nl,
  _$it,
  _$br,
  _$fa,
  _$de,
  _$ja,
  _$es,
  _$hr,
  _$hu,
]);

Serializer<LanguageCode> _$languageCodeSerializer =
    new _$LanguageCodeSerializer();

class _$LanguageCodeSerializer implements PrimitiveSerializer<LanguageCode> {
  @override
  final Iterable<Type> types = const <Type>[LanguageCode];
  @override
  final String wireName = 'LanguageCode';

  @override
  Object serialize(Serializers serializers, LanguageCode object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  LanguageCode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LanguageCode.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
