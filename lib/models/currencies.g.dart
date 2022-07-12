// GENERATED CODE - DO NOT MODIFY BY HAND

part of currencies;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Currencies> _$currenciesSerializer = new _$CurrenciesSerializer();

class _$CurrenciesSerializer implements StructuredSerializer<Currencies> {
  @override
  final Iterable<Type> types = const [Currencies, _$Currencies];
  @override
  final String wireName = 'Currencies';

  @override
  Iterable<Object?> serialize(Serializers serializers, Currencies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
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
    value = object.symbol;
    if (value != null) {
      result
        ..add('symbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Currencies deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrenciesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Currencies extends Currencies {
  @override
  final String? code;
  @override
  final String? name;
  @override
  final String? symbol;

  factory _$Currencies([void Function(CurrenciesBuilder)? updates]) =>
      (new CurrenciesBuilder()..update(updates))._build();

  _$Currencies._({this.code, this.name, this.symbol}) : super._();

  @override
  Currencies rebuild(void Function(CurrenciesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrenciesBuilder toBuilder() => new CurrenciesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Currencies &&
        code == other.code &&
        name == other.name &&
        symbol == other.symbol;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, code.hashCode), name.hashCode), symbol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Currencies')
          ..add('code', code)
          ..add('name', name)
          ..add('symbol', symbol))
        .toString();
  }
}

class CurrenciesBuilder implements Builder<Currencies, CurrenciesBuilder> {
  _$Currencies? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  CurrenciesBuilder();

  CurrenciesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _symbol = $v.symbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Currencies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Currencies;
  }

  @override
  void update(void Function(CurrenciesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Currencies build() => _build();

  _$Currencies _build() {
    final _$result =
        _$v ?? new _$Currencies._(code: code, name: name, symbol: symbol);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
