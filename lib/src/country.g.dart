// GENERATED CODE - DO NOT MODIFY BY HAND

part of dart_countries_states;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Country> _$countrySerializer = new _$CountrySerializer();

class _$CountrySerializer implements StructuredSerializer<Country> {
  @override
  final Iterable<Type> types = const [Country, _$Country];
  @override
  final String wireName = 'Country';

  @override
  Iterable<Object> serialize(Serializers serializers, Country object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.code2 != null) {
      result
        ..add('code2')
        ..add(serializers.serialize(object.code2,
            specifiedType: const FullType(String)));
    }
    if (object.code3 != null) {
      result
        ..add('code3')
        ..add(serializers.serialize(object.code3,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.capital != null) {
      result
        ..add('capital')
        ..add(serializers.serialize(object.capital,
            specifiedType: const FullType(String)));
    }
    if (object.region != null) {
      result
        ..add('region')
        ..add(serializers.serialize(object.region,
            specifiedType: const FullType(String)));
    }
    if (object.subregion != null) {
      result
        ..add('subregion')
        ..add(serializers.serialize(object.subregion,
            specifiedType: const FullType(String)));
    }
    if (object.states != null) {
      result
        ..add('states')
        ..add(serializers.serialize(object.states,
            specifiedType:
                const FullType(BuiltList, const [const FullType(State)])));
    }
    return result;
  }

  @override
  Country deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code2':
          result.code2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code3':
          result.code3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'capital':
          result.capital = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subregion':
          result.subregion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'states':
          result.states.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(State)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Country extends Country {
  @override
  final String code2;
  @override
  final String code3;
  @override
  final String name;
  @override
  final String capital;
  @override
  final String region;
  @override
  final String subregion;
  @override
  final BuiltList<State> states;

  factory _$Country([void Function(CountryBuilder) updates]) =>
      (new CountryBuilder()..update(updates)).build();

  _$Country._(
      {this.code2,
      this.code3,
      this.name,
      this.capital,
      this.region,
      this.subregion,
      this.states})
      : super._();

  @override
  Country rebuild(void Function(CountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryBuilder toBuilder() => new CountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Country &&
        code2 == other.code2 &&
        code3 == other.code3 &&
        name == other.name &&
        capital == other.capital &&
        region == other.region &&
        subregion == other.subregion &&
        states == other.states;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, code2.hashCode), code3.hashCode),
                        name.hashCode),
                    capital.hashCode),
                region.hashCode),
            subregion.hashCode),
        states.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Country')
          ..add('code2', code2)
          ..add('code3', code3)
          ..add('name', name)
          ..add('capital', capital)
          ..add('region', region)
          ..add('subregion', subregion)
          ..add('states', states))
        .toString();
  }
}

class CountryBuilder implements Builder<Country, CountryBuilder> {
  _$Country _$v;

  String _code2;
  String get code2 => _$this._code2;
  set code2(String code2) => _$this._code2 = code2;

  String _code3;
  String get code3 => _$this._code3;
  set code3(String code3) => _$this._code3 = code3;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _capital;
  String get capital => _$this._capital;
  set capital(String capital) => _$this._capital = capital;

  String _region;
  String get region => _$this._region;
  set region(String region) => _$this._region = region;

  String _subregion;
  String get subregion => _$this._subregion;
  set subregion(String subregion) => _$this._subregion = subregion;

  ListBuilder<State> _states;
  ListBuilder<State> get states => _$this._states ??= new ListBuilder<State>();
  set states(ListBuilder<State> states) => _$this._states = states;

  CountryBuilder();

  CountryBuilder get _$this {
    if (_$v != null) {
      _code2 = _$v.code2;
      _code3 = _$v.code3;
      _name = _$v.name;
      _capital = _$v.capital;
      _region = _$v.region;
      _subregion = _$v.subregion;
      _states = _$v.states?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Country other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Country;
  }

  @override
  void update(void Function(CountryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Country build() {
    _$Country _$result;
    try {
      _$result = _$v ??
          new _$Country._(
              code2: code2,
              code3: code3,
              name: name,
              capital: capital,
              region: region,
              subregion: subregion,
              states: _states?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'states';
        _states?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Country', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
