import 'package:dart_countries_states/country_provider.dart';
import 'package:dart_countries_states/street_provider.dart';

main() {
  final countryProvider = CountryProvider();
  var countries = countryProvider.getCountries();

  // When looking for an specific country
  var country = countryProvider.getCountryByName("United States of America");

  var streets = StreetProvider().getStreetsByName("ca");
}
