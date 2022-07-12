// GENERATED CODE - DO NOT MODIFY BY HAND

part of languages;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Languages> _$languagesSerializer = new _$LanguagesSerializer();

class _$LanguagesSerializer implements StructuredSerializer<Languages> {
  @override
  final Iterable<Type> types = const [Languages, _$Languages];
  @override
  final String wireName = 'Languages';

  @override
  Iterable<Object?> serialize(Serializers serializers, Languages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.iso6391;
    if (value != null) {
      result
        ..add('iso639_1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iso6392;
    if (value != null) {
      result
        ..add('iso639_2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nativeName;
    if (value != null) {
      result
        ..add('nativeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Languages deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LanguagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'iso639_1':
          result.iso6391 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'iso639_2':
          result.iso6392 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nativeName':
          result.nativeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Languages extends Languages {
  @override
  final String? iso6391;
  @override
  final String? iso6392;
  @override
  final String? name;
  @override
  final String? nativeName;

  factory _$Languages([void Function(LanguagesBuilder)? updates]) =>
      (new LanguagesBuilder()..update(updates))._build();

  _$Languages._({this.iso6391, this.iso6392, this.name, this.nativeName})
      : super._();

  @override
  Languages rebuild(void Function(LanguagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguagesBuilder toBuilder() => new LanguagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Languages &&
        iso6391 == other.iso6391 &&
        iso6392 == other.iso6392 &&
        name == other.name &&
        nativeName == other.nativeName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, iso6391.hashCode), iso6392.hashCode), name.hashCode),
        nativeName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Languages')
          ..add('iso6391', iso6391)
          ..add('iso6392', iso6392)
          ..add('name', name)
          ..add('nativeName', nativeName))
        .toString();
  }
}

class LanguagesBuilder implements Builder<Languages, LanguagesBuilder> {
  _$Languages? _$v;

  String? _iso6391;
  String? get iso6391 => _$this._iso6391;
  set iso6391(String? iso6391) => _$this._iso6391 = iso6391;

  String? _iso6392;
  String? get iso6392 => _$this._iso6392;
  set iso6392(String? iso6392) => _$this._iso6392 = iso6392;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nativeName;
  String? get nativeName => _$this._nativeName;
  set nativeName(String? nativeName) => _$this._nativeName = nativeName;

  LanguagesBuilder();

  LanguagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iso6391 = $v.iso6391;
      _iso6392 = $v.iso6392;
      _name = $v.name;
      _nativeName = $v.nativeName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Languages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Languages;
  }

  @override
  void update(void Function(LanguagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Languages build() => _build();

  _$Languages _build() {
    final _$result = _$v ??
        new _$Languages._(
            iso6391: iso6391,
            iso6392: iso6392,
            name: name,
            nativeName: nativeName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
