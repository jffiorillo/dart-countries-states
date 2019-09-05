import 'package:dart_countries_states/src/models/country.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should create a country', () async {
    final country = Country.manual(name: "Lithuania");

    expect(country.name, 'Lithuania');
  });
}
