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
  Iterable<Object> serialize(Serializers serializers, RegionalBlocs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegionalBlocsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'acronym':
          result.acronym = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'otherAcronyms':
          result.otherAcronyms.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'otherNames':
          result.otherNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
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

  factory _$RegionalBlocs([void Function(RegionalBlocsBuilder) updates]) =>
      (new RegionalBlocsBuilder()..update(updates)).build();

  _$RegionalBlocs._(
      {this.acronym, this.name, this.otherAcronyms, this.otherNames})
      : super._() {
    if (acronym == null) {
      throw new BuiltValueNullFieldError('RegionalBlocs', 'acronym');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('RegionalBlocs', 'name');
    }
    if (otherAcronyms == null) {
      throw new BuiltValueNullFieldError('RegionalBlocs', 'otherAcronyms');
    }
    if (otherNames == null) {
      throw new BuiltValueNullFieldError('RegionalBlocs', 'otherNames');
    }
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
    return (newBuiltValueToStringHelper('RegionalBlocs')
          ..add('acronym', acronym)
          ..add('name', name)
          ..add('otherAcronyms', otherAcronyms)
          ..add('otherNames', otherNames))
        .toString();
  }
}

class RegionalBlocsBuilder
    implements Builder<RegionalBlocs, RegionalBlocsBuilder> {
  _$RegionalBlocs _$v;

  String _acronym;
  String get acronym => _$this._acronym;
  set acronym(String acronym) => _$this._acronym = acronym;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _otherAcronyms;
  ListBuilder<String> get otherAcronyms =>
      _$this._otherAcronyms ??= new ListBuilder<String>();
  set otherAcronyms(ListBuilder<String> otherAcronyms) =>
      _$this._otherAcronyms = otherAcronyms;

  ListBuilder<String> _otherNames;
  ListBuilder<String> get otherNames =>
      _$this._otherNames ??= new ListBuilder<String>();
  set otherNames(ListBuilder<String> otherNames) =>
      _$this._otherNames = otherNames;

  RegionalBlocsBuilder();

  RegionalBlocsBuilder get _$this {
    if (_$v != null) {
      _acronym = _$v.acronym;
      _name = _$v.name;
      _otherAcronyms = _$v.otherAcronyms?.toBuilder();
      _otherNames = _$v.otherNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalBlocs other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegionalBlocs;
  }

  @override
  void update(void Function(RegionalBlocsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegionalBlocs build() {
    _$RegionalBlocs _$result;
    try {
      _$result = _$v ??
          new _$RegionalBlocs._(
              acronym: acronym,
              name: name,
              otherAcronyms: otherAcronyms.build(),
              otherNames: otherNames.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'otherAcronyms';
        otherAcronyms.build();
        _$failedField = 'otherNames';
        otherNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RegionalBlocs', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
