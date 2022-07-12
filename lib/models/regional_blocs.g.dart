// GENERATED CODE - DO NOT MODIFY BY HAND

part of regional_blocs;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegionalBlocs> _$regionalBlocsSerializer =
    new _$RegionalBlocsSerializer();

class _$RegionalBlocsSerializer implements StructuredSerializer<RegionalBlocs> {
  @override
  final Iterable<Type> types = const [RegionalBlocs, _$RegionalBlocs];
  @override
  final String wireName = 'RegionalBlocs';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegionalBlocs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'acronym',
      serializers.serialize(object.acronym,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'otherAcronyms',
      serializers.serialize(object.otherAcronyms,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'otherNames',
      serializers.serialize(object.otherNames,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  RegionalBlocs deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegionalBlocsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'acronym':
          result.acronym = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'otherAcronyms':
          result.otherAcronyms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'otherNames':
          result.otherNames.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$RegionalBlocs extends RegionalBlocs {
  @override
  final String acronym;
  @override
  final String name;
  @override
  final BuiltList<String> otherAcronyms;
  @override
  final BuiltList<String> otherNames;

  factory _$RegionalBlocs([void Function(RegionalBlocsBuilder)? updates]) =>
      (new RegionalBlocsBuilder()..update(updates))._build();

  _$RegionalBlocs._(
      {required this.acronym,
      required this.name,
      required this.otherAcronyms,
      required this.otherNames})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(acronym, r'RegionalBlocs', 'acronym');
    BuiltValueNullFieldError.checkNotNull(name, r'RegionalBlocs', 'name');
    BuiltValueNullFieldError.checkNotNull(
        otherAcronyms, r'RegionalBlocs', 'otherAcronyms');
    BuiltValueNullFieldError.checkNotNull(
        otherNames, r'RegionalBlocs', 'otherNames');
  }

  @override
  RegionalBlocs rebuild(void Function(RegionalBlocsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionalBlocsBuilder toBuilder() => new RegionalBlocsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalBlocs &&
        acronym == other.acronym &&
        name == other.name &&
        otherAcronyms == other.otherAcronyms &&
        otherNames == other.otherNames;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, acronym.hashCode), name.hashCode),
            otherAcronyms.hashCode),
        otherNames.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalBlocs')
          ..add('acronym', acronym)
          ..add('name', name)
          ..add('otherAcronyms', otherAcronyms)
          ..add('otherNames', otherNames))
        .toString();
  }
}

class RegionalBlocsBuilder
    implements Builder<RegionalBlocs, RegionalBlocsBuilder> {
  _$RegionalBlocs? _$v;

  String? _acronym;
  String? get acronym => _$this._acronym;
  set acronym(String? acronym) => _$this._acronym = acronym;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _otherAcronyms;
  ListBuilder<String> get otherAcronyms =>
      _$this._otherAcronyms ??= new ListBuilder<String>();
  set otherAcronyms(ListBuilder<String>? otherAcronyms) =>
      _$this._otherAcronyms = otherAcronyms;

  ListBuilder<String>? _otherNames;
  ListBuilder<String> get otherNames =>
      _$this._otherNames ??= new ListBuilder<String>();
  set otherNames(ListBuilder<String>? otherNames) =>
      _$this._otherNames = otherNames;

  RegionalBlocsBuilder();

  RegionalBlocsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acronym = $v.acronym;
      _name = $v.name;
      _otherAcronyms = $v.otherAcronyms.toBuilder();
      _otherNames = $v.otherNames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalBlocs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegionalBlocs;
  }

  @override
  void update(void Function(RegionalBlocsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalBlocs build() => _build();

  _$RegionalBlocs _build() {
    _$RegionalBlocs _$result;
    try {
      _$result = _$v ??
          new _$RegionalBlocs._(
              acronym: BuiltValueNullFieldError.checkNotNull(
                  acronym, r'RegionalBlocs', 'acronym'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'RegionalBlocs', 'name'),
              otherAcronyms: otherAcronyms.build(),
              otherNames: otherNames.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'otherAcronyms';
        otherAcronyms.build();
        _$failedField = 'otherNames';
        otherNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegionalBlocs', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
