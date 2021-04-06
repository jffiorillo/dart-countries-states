import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';

/// Extends [StandardJsonPlugin] but also understands custom/external enums.
///
/// See https://github.com/google/built_value.dart/issues/568.
///
/// Example use:
/// ```
/// import 'package:built_value/serializer.dart';
///
/// import 'custom_enum_json_plugin.dart';
///
/// void addJsonPlugin(SerializersBuilder builder) {
///   builder.addPlugin(CustomEnumJsonPlugin([
///     MyEnum1,
///     MyEnum2,
///   ]));
/// }
/// ```
class CustomEnumJsonPlugin extends StandardJsonPlugin {
  final Set<Type> _customEnumTypes;

  CustomEnumJsonPlugin(this._customEnumTypes);

  @override
  Object? beforeDeserialize(object, type) {
    if (type.root == BuiltMap && type.parameters.isNotEmpty) {
      if (_customEnumTypes.contains(type.parameters.first.root)) {
        object = _addEnumEncoding(object as Map<String, dynamic>);
      }
    }
    return super.beforeDeserialize(object, type);
  }

  Map<String, T> _addEnumEncoding<T>(Map<String, T> json) =>
      json.map((key, value) => MapEntry('"$key"', value));

  @override
  Object? afterSerialize(object, type) {
    var json = super.afterSerialize(object, type);
    if (type.root == BuiltMap && type.parameters.isNotEmpty) {
      if (_customEnumTypes.contains(type.parameters.first.root)) {
        json = _removeEnumEncoding(json as Map<String, Object>);
      }
    }
    return json;
  }

  Map<String, Object> _removeEnumEncoding(Map<String, Object> json) {
    return json.map((key, value) {
      var valOut = value;
      if (key is String && key.startsWith('"')) {
        key = key.substring(1, key.length - 1);
      }
      if (value is Map && value.containsKey(discriminator)) {
        valOut = value[valueKey];
      }
      return MapEntry(key, valOut);
    });
  }
}
