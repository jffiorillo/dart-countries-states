# dart_countries_states

A Dart project that contains all the countries and states. The content is based on 
[stefanbinder/countries-states](https://github.com/stefanbinder/countries-states) repository.

## Getting Started

The format of the countries is the following:

```dart
class Country {
  @nullable String name; // Name of the country
  @nullable String code2; // 2 letters Country code
  @nullable String code3; // 3 letters Country code
  @nullable String capital; // Name of the capital
  @nullable String region; // the region/continent of the country, possible values: 
  // ['', 'Asia', 'Europe', 'Africa', 'Oceania', 'Americas', 'Polar']
  @nullable String subregion; // The subregion inside the region, possible values: 
  // ['', 'Southern Asia','Northern Europe','Southern Europe','Northern Africa','Polynesia','Middle Africa','Caribbean','South America',
  // 'Western Asia','Australia and New Zealand','Western Europe','Eastern Europe','Central','America','Western Africa','Northern America',
  // 'Southern Africa','Eastern Africa','South-Eastern Asia','Eastern Asia','Melanesia,'Micronesia','Central Asia']

  @nullable
  BuiltList<State> states;
}

class State {
  @nullable String code; // Code of the state , if any
  @nullable String name; // Name of the state
  @nullable String subdivision; // Possible values: [ null , 'province' , 'territory' , 'Autonomous region' , 'Municipality' , 'Province' ,
    // 'Special administrative region' , 'Metropolitan region' , 'Union territory' , 'state' , 'federal territory' , 'federal district' , 'country' ,
    // 'special municipality' , 'Island' , 'regional council' , 'special island authority' , 'unitary authority' , 'administrative region' ,
    // 'administrative territory' , 'autonomous city' , 'autonomous district' , 'autonomous region' , 'republic' , 'autonomous city in North Africa' ,
    // 'autonomous community' , 'London borough' , 'Nation' , 'city corporation' , 'council area' , 'district council area' , 'metropolitan district' ,
    // 'two-tier county' , 'district' , 'outlying territory ]
}
```

### Example

```json
{
  "code2": "CV",
  "code3": "CPV",
  "name": "Cape Verde",
  "capital": "Praia",
  "region": "Africa",
  "subregion": "Western Africa",
  "states": [
    {
      "code": "B",
      "name": "Ilhas de Barlavento",
      "subdivision": null
    },
    {
      "code": "S",
      "name": "Ilhas de Sotavento",
      "subdivision": null
    }
  ]
}
```

### Utility functions

```$dart

Country getCountryByName(String name)
Country getCountryByCode2(String code2)
Country getCountryByCode3(String code3)
Country getCountryByCapital(String capital)

List<Country> getCountriesByCapital(String capital)
List<Country> getCountriesByRegion(String region)
List<Country> getCountriesBySubregion(String subregion)
```