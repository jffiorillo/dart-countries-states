import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'state.g.dart';

abstract class State implements Built<State, StateBuilder> {
  static Serializer<State> get serializer => _$stateSerializer;

  @nullable
  String get code;

  @nullable
  String get name;

  @nullable
  String get subdivision;

  State._();

  factory State([void Function(StateBuilder) updates]) = _$State;
}
