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
  Iterable<Object?> serialize(
      Serializers serializers, StreetsBcnStreetApiModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('Id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Descripcio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StreetsBcnStreetApiModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StreetsBcnStreetApiModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Value':
          result.name = serializers.deserialize(value,
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
  final String? id;
  @override
  final String? name;
  @override
  final String? description;

  factory _$StreetsBcnStreetApiModel(
          [void Function(StreetsBcnStreetApiModelBuilder)? updates]) =>
      (new StreetsBcnStreetApiModelBuilder()..update(updates)).build();

  _$StreetsBcnStreetApiModel._({this.id, this.name, this.description})
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
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), name.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StreetsBcnStreetApiModel')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class StreetsBcnStreetApiModelBuilder
    implements
        Builder<StreetsBcnStreetApiModel, StreetsBcnStreetApiModelBuilder> {
  _$StreetsBcnStreetApiModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  StreetsBcnStreetApiModelBuilder();

  StreetsBcnStreetApiModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreetsBcnStreetApiModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreetsBcnStreetApiModel;
  }

  @override
  void update(void Function(StreetsBcnStreetApiModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StreetsBcnStreetApiModel build() {
    final _$result = _$v ??
        new _$StreetsBcnStreetApiModel._(
            id: id, name: name, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
