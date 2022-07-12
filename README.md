# dart_countries_states

A Dart project that contains all the countries and states. The content is based on 
[apilayer/restcountries](https://github.com/apilayer/restcountries) repository.

## Getting Started

The format of the models can be found [here](lib/models)

### Utility functions

```$dart

Country getCountryByName(String name, ...)
Country getCountryByCode2(String code2, ...)
Country getCountryByCode3(String code3, ...)
Country getCountryByCapital(String capital, ...)

List<Country> getCountriesByCapital(String capital, ...)
List<Country> getCountriesByRegion(String region, ...)
List<Country> getCountriesBySubregion(String subregion, ...)
```

Full list of available functions can be found [here](lib/country_provider.dart)

### Internationalization

The supported languages are `['de', 'es', 'fr', 'ja', 'it', 'br', 'pt', 'nl', 'hr', 'fa','hu]`.

```dart2
getCountryByName(name: 'Koweït', lang: 'fr')
```

### Example

The examples can be found in [example](example/lib) and [test](test).

```json
{
  "name": "Bahrain",
  "topLevelDomain": [
    ".bh"
  ],
  "alpha2Code": "BH",
  "alpha3Code": "BHR",
  "callingCodes": [
    "973"
  ],
  "capital": "Manama",
  "altSpellings": [
    "BH",
    "Kingdom of Bahrain",
    "Mamlakat al-Baḥrayn"
  ],
  "region": "Asia",
  "subregion": "Western Asia",
  "population": 1404900,
  "latlng": [
    26,
    50.55
  ],
  "demonym": "Bahraini",
  "area": 765,
  "gini": null,
  "timezones": [
    "UTC+03:00"
  ],
  "borders": [],
  "nativeName": "‏البحرين",
  "numericCode": "048",
  "currencies": [
    {
      "code": "BHD",
      "name": "Bahraini dinar",
      "symbol": ".د.ب"
    }
  ],
  "languages": [
    {
      "iso639_1": "ar",
      "iso639_2": "ara",
      "name": "Arabic",
      "nativeName": "العربية"
    }
  ],
  "translations": {
    "de": "Bahrain",
    "es": "Bahrein",
    "fr": "Bahreïn",
    "ja": "バーレーン",
    "it": "Bahrein",
    "br": "Bahrein",
    "pt": "Barém",
    "nl": "Bahrein",
    "hr": "Bahrein",
    "fa": "بحرین"
  },
  "flag": "https://restcountries.eu/data/bhr.svg",
  "regionalBlocs": [
    {
      "acronym": "AL",
      "name": "Arab League",
      "otherAcronyms": [],
      "otherNames": [
        "جامعة الدول العربية",
        "Jāmiʻat ad-Duwal al-ʻArabīyah",
        "League of Arab States"
      ]
    }
  ],
  "cioc": "BRN"
}
```
