import 'package:dart_countries_states/street_provider.dart';
import 'package:test/test.dart';

void main() {
  late StreetProvider streetProvider;
  setUp(() {
    streetProvider = StreetProvider();
  });

  test('should load diagonal', () async {
    var countries = await streetProvider.getStreetsByName("di");

    expect(countries.length, 129);
    expect(
        countries.any((value) =>
            value.fullName?.toLowerCase().contains("diagonal") == true),
        true);
  });
}
