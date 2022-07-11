// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streets_bcn_street_type_api_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StreetsBcnStreetTypeApiModel>
    _$streetsBcnStreetTypeApiModelSerializer =
    new _$StreetsBcnStreetTypeApiModelSerializer();

class _$StreetsBcnStreetTypeApiModelSerializer
    implements StructuredSerializer<StreetsBcnStreetTypeApiModel> {
  @override
  final Iterable<Type> types = const [
    StreetsBcnStreetTypeApiModel,
    _$StreetsBcnStreetTypeApiModel
  ];
  @override
  final String wireName = 'StreetsBcnStreetTypeApiModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StreetsBcnStreetTypeApiModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('codi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.abbreviation;
    if (value != null) {
      result
        ..add('abreviatura')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StreetsBcnStreetTypeApiModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StreetsBcnStreetTypeApiModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'codi':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'abreviatura':
          result.abbreviation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nom':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$StreetsBcnStreetTypeApiModel extends StreetsBcnStreetTypeApiModel {
  @override
  final String? id;
  @override
  final String? abbreviation;
  @override
  final String? name;

  factory _$StreetsBcnStreetTypeApiModel(
          [void Function(StreetsBcnStreetTypeApiModelBuilder)? updates]) =>
      (new StreetsBcnStreetTypeApiModelBuilder()..update(updates))._build();

  _$StreetsBcnStreetTypeApiModel._({this.id, this.abbreviation, this.name})
      : super._();

  @override
  StreetsBcnStreetTypeApiModel rebuild(
          void Function(StreetsBcnStreetTypeApiModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreetsBcnStreetTypeApiModelBuilder toBuilder() =>
      new StreetsBcnStreetTypeApiModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreetsBcnStreetTypeApiModel &&
        id == other.id &&
        abbreviation == other.abbreviation &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), abbreviation.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StreetsBcnStreetTypeApiModel')
          ..add('id', id)
          ..add('abbreviation', abbreviation)
          ..add('name', name))
        .toString();
  }
}

class StreetsBcnStreetTypeApiModelBuilder
    implements
        Builder<StreetsBcnStreetTypeApiModel,
            StreetsBcnStreetTypeApiModelBuilder> {
  _$StreetsBcnStreetTypeApiModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _abbreviation;
  String? get abbreviation => _$this._abbreviation;
  set abbreviation(String? abbreviation) => _$this._abbreviation = abbreviation;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  StreetsBcnStreetTypeApiModelBuilder();

  StreetsBcnStreetTypeApiModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _abbreviation = $v.abbreviation;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreetsBcnStreetTypeApiModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreetsBcnStreetTypeApiModel;
  }

  @override
  void update(void Function(StreetsBcnStreetTypeApiModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreetsBcnStreetTypeApiModel build() => _build();

  _$StreetsBcnStreetTypeApiModel _build() {
    final _$result = _$v ??
        new _$StreetsBcnStreetTypeApiModel._(
            id: id, abbreviation: abbreviation, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
