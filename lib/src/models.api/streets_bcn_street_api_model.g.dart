// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streets_bcn_street_api_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StreetsBcnStreetApiModel> _$streetsBcnStreetApiModelSerializer =
    new _$StreetsBcnStreetApiModelSerializer();

class _$StreetsBcnStreetApiModelSerializer
    implements StructuredSerializer<StreetsBcnStreetApiModel> {
  @override
  final Iterable<Type> types = const [
    StreetsBcnStreetApiModel,
    _$StreetsBcnStreetApiModel
  ];
  @override
  final String wireName = 'StreetsBcnStreetApiModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, StreetsBcnStreetApiModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('Id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('Descripcio')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StreetsBcnStreetApiModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StreetsBcnStreetApiModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Descripcio':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StreetsBcnStreetApiModel extends StreetsBcnStreetApiModel {
  @override
  final String id;
  @override
  final String value;
  @override
  final String description;

  factory _$StreetsBcnStreetApiModel(
          [void Function(StreetsBcnStreetApiModelBuilder) updates]) =>
      (new StreetsBcnStreetApiModelBuilder()..update(updates)).build();

  _$StreetsBcnStreetApiModel._({this.id, this.value, this.description})
      : super._();

  @override
  StreetsBcnStreetApiModel rebuild(
          void Function(StreetsBcnStreetApiModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreetsBcnStreetApiModelBuilder toBuilder() =>
      new StreetsBcnStreetApiModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreetsBcnStreetApiModel &&
        id == other.id &&
        value == other.value &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), value.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StreetsBcnStreetApiModel')
          ..add('id', id)
          ..add('value', value)
          ..add('description', description))
        .toString();
  }
}

class StreetsBcnStreetApiModelBuilder
    implements
        Builder<StreetsBcnStreetApiModel, StreetsBcnStreetApiModelBuilder> {
  _$StreetsBcnStreetApiModel _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  StreetsBcnStreetApiModelBuilder();

  StreetsBcnStreetApiModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _value = _$v.value;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreetsBcnStreetApiModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StreetsBcnStreetApiModel;
  }

  @override
  void update(void Function(StreetsBcnStreetApiModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StreetsBcnStreetApiModel build() {
    final _$result = _$v ??
        new _$StreetsBcnStreetApiModel._(
            id: id, value: value, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
