// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streets_bcn_response_api_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StreetsBcnResponseApiModel> _$streetsBcnResponseApiModelSerializer =
    new _$StreetsBcnResponseApiModelSerializer();

class _$StreetsBcnResponseApiModelSerializer
    implements StructuredSerializer<StreetsBcnResponseApiModel> {
  @override
  final Iterable<Type> types = const [
    StreetsBcnResponseApiModel,
    _$StreetsBcnResponseApiModel
  ];
  @override
  final String wireName = 'StreetsBcnResponseApiModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StreetsBcnResponseApiModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'resultats',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(StreetsBcnStreetApiModel)])),
    ];

    return result;
  }

  @override
  StreetsBcnResponseApiModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StreetsBcnResponseApiModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'resultats':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(StreetsBcnStreetApiModel)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$StreetsBcnResponseApiModel extends StreetsBcnResponseApiModel {
  @override
  final BuiltList<StreetsBcnStreetApiModel> results;

  factory _$StreetsBcnResponseApiModel(
          [void Function(StreetsBcnResponseApiModelBuilder)? updates]) =>
      (new StreetsBcnResponseApiModelBuilder()..update(updates))._build();

  _$StreetsBcnResponseApiModel._({required this.results}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        results, r'StreetsBcnResponseApiModel', 'results');
  }

  @override
  StreetsBcnResponseApiModel rebuild(
          void Function(StreetsBcnResponseApiModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreetsBcnResponseApiModelBuilder toBuilder() =>
      new StreetsBcnResponseApiModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreetsBcnResponseApiModel && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StreetsBcnResponseApiModel')
          ..add('results', results))
        .toString();
  }
}

class StreetsBcnResponseApiModelBuilder
    implements
        Builder<StreetsBcnResponseApiModel, StreetsBcnResponseApiModelBuilder> {
  _$StreetsBcnResponseApiModel? _$v;

  ListBuilder<StreetsBcnStreetApiModel>? _results;
  ListBuilder<StreetsBcnStreetApiModel> get results =>
      _$this._results ??= new ListBuilder<StreetsBcnStreetApiModel>();
  set results(ListBuilder<StreetsBcnStreetApiModel>? results) =>
      _$this._results = results;

  StreetsBcnResponseApiModelBuilder();

  StreetsBcnResponseApiModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreetsBcnResponseApiModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreetsBcnResponseApiModel;
  }

  @override
  void update(void Function(StreetsBcnResponseApiModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreetsBcnResponseApiModel build() => _build();

  _$StreetsBcnResponseApiModel _build() {
    _$StreetsBcnResponseApiModel _$result;
    try {
      _$result =
          _$v ?? new _$StreetsBcnResponseApiModel._(results: results.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StreetsBcnResponseApiModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
