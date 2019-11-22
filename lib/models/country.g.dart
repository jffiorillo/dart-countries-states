// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_dto;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Country> _$countrySerializer = new _$CountrySerializer();

class _$CountrySerializer implements StructuredSerializer<Country> {
  @override
  final Iterable<Type> types = const [Country, _$Country];
  @override
  final String wireName = 'Country';

  @override
  Iterable<Object> serialize(Serializers serializers, Country object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.topLevelDomain != null) {
      result
        ..add('topLevelDomain')
        ..add(serializers.serialize(object.topLevelDomain,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.alpha2Code != null) {
      result
        ..add('alpha2Code')
        ..add(serializers.serialize(object.alpha2Code,
            specifiedType: const FullType(Alpha2Code)));
    }
    if (object.alpha3Code != null) {
      result
        ..add('alpha3Code')
        ..add(serializers.serialize(object.alpha3Code,
            specifiedType: const FullType(Alpha3Code)));
    }
    if (object.callingCodes != null) {
      result
        ..add('callingCodes')
        ..add(serializers.serialize(object.callingCodes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.capital != null) {
      result
        ..add('capital')
        ..add(serializers.serialize(object.capital,
            specifiedType: const FullType(String)));
    }
    if (object.altSpellings != null) {
      result
        ..add('altSpellings')
        ..add(serializers.serialize(object.altSpellings,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.region != null) {
      result
        ..add('region')
        ..add(serializers.serialize(object.region,
            specifiedType: const FullType(String)));
    }
    if (object.subregion != null) {
      result
        ..add('subregion')
        ..add(serializers.serialize(object.subregion,
            specifiedType: const FullType(String)));
    }
    if (object.population != null) {
      result
        ..add('population')
        ..add(serializers.serialize(object.population,
            specifiedType: const FullType(int)));
    }
    if (object.latlng != null) {
      result
        ..add('latlng')
        ..add(serializers.serialize(object.latlng,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.demonym != null) {
      result
        ..add('demonym')
        ..add(serializers.serialize(object.demonym,
            specifiedType: const FullType(String)));
    }
    if (object.area != null) {
      result
        ..add('area')
        ..add(serializers.serialize(object.area,
            specifiedType: const FullType(double)));
    }
    if (object.gini != null) {
      result
        ..add('gini')
        ..add(serializers.serialize(object.gini,
            specifiedType: const FullType(double)));
    }
    if (object.timezones != null) {
      result
        ..add('timezones')
        ..add(serializers.serialize(object.timezones,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.borders != null) {
      result
        ..add('borders')
        ..add(serializers.serialize(object.borders,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.nativeName != null) {
      result
        ..add('nativeName')
        ..add(serializers.serialize(object.nativeName,
            specifiedType: const FullType(String)));
    }
    if (object.numericCode != null) {
      result
        ..add('numericCode')
        ..add(serializers.serialize(object.numericCode,
            specifiedType: const FullType(String)));
    }
    if (object.currencies != null) {
      result
        ..add('currencies')
        ..add(serializers.serialize(object.currencies,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Currencies)])));
    }
    if (object.languages != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(object.languages,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Languages)])));
    }
    if (object.translations != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(object.translations,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(LanguageCode), const FullType(String)])));
    }
    if (object.flag != null) {
      result
        ..add('flag')
        ..add(serializers.serialize(object.flag,
            specifiedType: const FullType(String)));
    }
    if (object.regionalBlocs != null) {
      result
        ..add('regionalBlocs')
        ..add(serializers.serialize(object.regionalBlocs,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RegionalBlocs)])));
    }
    if (object.cioc != null) {
      result
        ..add('cioc')
        ..add(serializers.serialize(object.cioc,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Country deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'topLevelDomain':
          result.topLevelDomain.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'alpha2Code':
          result.alpha2Code = serializers.deserialize(value,
              specifiedType: const FullType(Alpha2Code)) as Alpha2Code;
          break;
        case 'alpha3Code':
          result.alpha3Code = serializers.deserialize(value,
              specifiedType: const FullType(Alpha3Code)) as Alpha3Code;
          break;
        case 'callingCodes':
          result.callingCodes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'capital':
          result.capital = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'altSpellings':
          result.altSpellings.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subregion':
          result.subregion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'population':
          result.population = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'latlng':
          result.latlng.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'demonym':
          result.demonym = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'gini':
          result.gini = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'timezones':
          result.timezones.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'borders':
          result.borders.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'nativeName':
          result.nativeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numericCode':
          result.numericCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currencies':
          result.currencies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Currencies)]))
              as BuiltList<dynamic>);
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Languages)]))
              as BuiltList<dynamic>);
          break;
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(LanguageCode),
                const FullType(String)
              ])) as BuiltMap<dynamic, dynamic>);
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'regionalBlocs':
          result.regionalBlocs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RegionalBlocs)]))
              as BuiltList<dynamic>);
          break;
        case 'cioc':
          result.cioc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Country extends Country {
  @override
  final String name;
  @override
  final BuiltList<String> topLevelDomain;
  @override
  final Alpha2Code alpha2Code;
  @override
  final Alpha3Code alpha3Code;
  @override
  final BuiltList<String> callingCodes;
  @override
  final String capital;
  @override
  final BuiltList<String> altSpellings;
  @override
  final String region;
  @override
  final String subregion;
  @override
  final int population;
  @override
  final BuiltList<double> latlng;
  @override
  final String demonym;
  @override
  final double area;
  @override
  final double gini;
  @override
  final BuiltList<String> timezones;
  @override
  final BuiltList<String> borders;
  @override
  final String nativeName;
  @override
  final String numericCode;
  @override
  final BuiltList<Currencies> currencies;
  @override
  final BuiltList<Languages> languages;
  @override
  final BuiltMap<LanguageCode, String> translations;
  @override
  final String flag;
  @override
  final BuiltList<RegionalBlocs> regionalBlocs;
  @override
  final String cioc;

  factory _$Country([void Function(CountryBuilder) updates]) =>
      (new CountryBuilder()..update(updates)).build();

  _$Country._(
      {this.name,
      this.topLevelDomain,
      this.alpha2Code,
      this.alpha3Code,
      this.callingCodes,
      this.capital,
      this.altSpellings,
      this.region,
      this.subregion,
      this.population,
      this.latlng,
      this.demonym,
      this.area,
      this.gini,
      this.timezones,
      this.borders,
      this.nativeName,
      this.numericCode,
      this.currencies,
      this.languages,
      this.translations,
      this.flag,
      this.regionalBlocs,
      this.cioc})
      : super._();

  @override
  Country rebuild(void Function(CountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryBuilder toBuilder() => new CountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Country &&
        name == other.name &&
        topLevelDomain == other.topLevelDomain &&
        alpha2Code == other.alpha2Code &&
        alpha3Code == other.alpha3Code &&
        callingCodes == other.callingCodes &&
        capital == other.capital &&
        altSpellings == other.altSpellings &&
        region == other.region &&
        subregion == other.subregion &&
        population == other.population &&
        latlng == other.latlng &&
        demonym == other.demonym &&
        area == other.area &&
        gini == other.gini &&
        timezones == other.timezones &&
        borders == other.borders &&
        nativeName == other.nativeName &&
        numericCode == other.numericCode &&
        currencies == other.currencies &&
        languages == other.languages &&
        translations == other.translations &&
        flag == other.flag &&
        regionalBlocs == other.regionalBlocs &&
        cioc == other.cioc;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, name.hashCode), topLevelDomain.hashCode), alpha2Code.hashCode), alpha3Code.hashCode), callingCodes.hashCode),
                                                                                capital.hashCode),
                                                                            altSpellings.hashCode),
                                                                        region.hashCode),
                                                                    subregion.hashCode),
                                                                population.hashCode),
                                                            latlng.hashCode),
                                                        demonym.hashCode),
                                                    area.hashCode),
                                                gini.hashCode),
                                            timezones.hashCode),
                                        borders.hashCode),
                                    nativeName.hashCode),
                                numericCode.hashCode),
                            currencies.hashCode),
                        languages.hashCode),
                    translations.hashCode),
                flag.hashCode),
            regionalBlocs.hashCode),
        cioc.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Country')
          ..add('name', name)
          ..add('topLevelDomain', topLevelDomain)
          ..add('alpha2Code', alpha2Code)
          ..add('alpha3Code', alpha3Code)
          ..add('callingCodes', callingCodes)
          ..add('capital', capital)
          ..add('altSpellings', altSpellings)
          ..add('region', region)
          ..add('subregion', subregion)
          ..add('population', population)
          ..add('latlng', latlng)
          ..add('demonym', demonym)
          ..add('area', area)
          ..add('gini', gini)
          ..add('timezones', timezones)
          ..add('borders', borders)
          ..add('nativeName', nativeName)
          ..add('numericCode', numericCode)
          ..add('currencies', currencies)
          ..add('languages', languages)
          ..add('translations', translations)
          ..add('flag', flag)
          ..add('regionalBlocs', regionalBlocs)
          ..add('cioc', cioc))
        .toString();
  }
}

class CountryBuilder implements Builder<Country, CountryBuilder> {
  _$Country _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _topLevelDomain;
  ListBuilder<String> get topLevelDomain =>
      _$this._topLevelDomain ??= new ListBuilder<String>();
  set topLevelDomain(ListBuilder<String> topLevelDomain) =>
      _$this._topLevelDomain = topLevelDomain;

  Alpha2Code _alpha2Code;
  Alpha2Code get alpha2Code => _$this._alpha2Code;
  set alpha2Code(Alpha2Code alpha2Code) => _$this._alpha2Code = alpha2Code;

  Alpha3Code _alpha3Code;
  Alpha3Code get alpha3Code => _$this._alpha3Code;
  set alpha3Code(Alpha3Code alpha3Code) => _$this._alpha3Code = alpha3Code;

  ListBuilder<String> _callingCodes;
  ListBuilder<String> get callingCodes =>
      _$this._callingCodes ??= new ListBuilder<String>();
  set callingCodes(ListBuilder<String> callingCodes) =>
      _$this._callingCodes = callingCodes;

  String _capital;
  String get capital => _$this._capital;
  set capital(String capital) => _$this._capital = capital;

  ListBuilder<String> _altSpellings;
  ListBuilder<String> get altSpellings =>
      _$this._altSpellings ??= new ListBuilder<String>();
  set altSpellings(ListBuilder<String> altSpellings) =>
      _$this._altSpellings = altSpellings;

  String _region;
  String get region => _$this._region;
  set region(String region) => _$this._region = region;

  String _subregion;
  String get subregion => _$this._subregion;
  set subregion(String subregion) => _$this._subregion = subregion;

  int _population;
  int get population => _$this._population;
  set population(int population) => _$this._population = population;

  ListBuilder<double> _latlng;
  ListBuilder<double> get latlng =>
      _$this._latlng ??= new ListBuilder<double>();
  set latlng(ListBuilder<double> latlng) => _$this._latlng = latlng;

  String _demonym;
  String get demonym => _$this._demonym;
  set demonym(String demonym) => _$this._demonym = demonym;

  double _area;
  double get area => _$this._area;
  set area(double area) => _$this._area = area;

  double _gini;
  double get gini => _$this._gini;
  set gini(double gini) => _$this._gini = gini;

  ListBuilder<String> _timezones;
  ListBuilder<String> get timezones =>
      _$this._timezones ??= new ListBuilder<String>();
  set timezones(ListBuilder<String> timezones) => _$this._timezones = timezones;

  ListBuilder<String> _borders;
  ListBuilder<String> get borders =>
      _$this._borders ??= new ListBuilder<String>();
  set borders(ListBuilder<String> borders) => _$this._borders = borders;

  String _nativeName;
  String get nativeName => _$this._nativeName;
  set nativeName(String nativeName) => _$this._nativeName = nativeName;

  String _numericCode;
  String get numericCode => _$this._numericCode;
  set numericCode(String numericCode) => _$this._numericCode = numericCode;

  ListBuilder<Currencies> _currencies;
  ListBuilder<Currencies> get currencies =>
      _$this._currencies ??= new ListBuilder<Currencies>();
  set currencies(ListBuilder<Currencies> currencies) =>
      _$this._currencies = currencies;

  ListBuilder<Languages> _languages;
  ListBuilder<Languages> get languages =>
      _$this._languages ??= new ListBuilder<Languages>();
  set languages(ListBuilder<Languages> languages) =>
      _$this._languages = languages;

  MapBuilder<LanguageCode, String> _translations;
  MapBuilder<LanguageCode, String> get translations =>
      _$this._translations ??= new MapBuilder<LanguageCode, String>();
  set translations(MapBuilder<LanguageCode, String> translations) =>
      _$this._translations = translations;

  String _flag;
  String get flag => _$this._flag;
  set flag(String flag) => _$this._flag = flag;

  ListBuilder<RegionalBlocs> _regionalBlocs;
  ListBuilder<RegionalBlocs> get regionalBlocs =>
      _$this._regionalBlocs ??= new ListBuilder<RegionalBlocs>();
  set regionalBlocs(ListBuilder<RegionalBlocs> regionalBlocs) =>
      _$this._regionalBlocs = regionalBlocs;

  String _cioc;
  String get cioc => _$this._cioc;
  set cioc(String cioc) => _$this._cioc = cioc;

  CountryBuilder();

  CountryBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _topLevelDomain = _$v.topLevelDomain?.toBuilder();
      _alpha2Code = _$v.alpha2Code;
      _alpha3Code = _$v.alpha3Code;
      _callingCodes = _$v.callingCodes?.toBuilder();
      _capital = _$v.capital;
      _altSpellings = _$v.altSpellings?.toBuilder();
      _region = _$v.region;
      _subregion = _$v.subregion;
      _population = _$v.population;
      _latlng = _$v.latlng?.toBuilder();
      _demonym = _$v.demonym;
      _area = _$v.area;
      _gini = _$v.gini;
      _timezones = _$v.timezones?.toBuilder();
      _borders = _$v.borders?.toBuilder();
      _nativeName = _$v.nativeName;
      _numericCode = _$v.numericCode;
      _currencies = _$v.currencies?.toBuilder();
      _languages = _$v.languages?.toBuilder();
      _translations = _$v.translations?.toBuilder();
      _flag = _$v.flag;
      _regionalBlocs = _$v.regionalBlocs?.toBuilder();
      _cioc = _$v.cioc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Country other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Country;
  }

  @override
  void update(void Function(CountryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Country build() {
    _$Country _$result;
    try {
      _$result = _$v ??
          new _$Country._(
              name: name,
              topLevelDomain: _topLevelDomain?.build(),
              alpha2Code: alpha2Code,
              alpha3Code: alpha3Code,
              callingCodes: _callingCodes?.build(),
              capital: capital,
              altSpellings: _altSpellings?.build(),
              region: region,
              subregion: subregion,
              population: population,
              latlng: _latlng?.build(),
              demonym: demonym,
              area: area,
              gini: gini,
              timezones: _timezones?.build(),
              borders: _borders?.build(),
              nativeName: nativeName,
              numericCode: numericCode,
              currencies: _currencies?.build(),
              languages: _languages?.build(),
              translations: _translations?.build(),
              flag: flag,
              regionalBlocs: _regionalBlocs?.build(),
              cioc: cioc);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'topLevelDomain';
        _topLevelDomain?.build();

        _$failedField = 'callingCodes';
        _callingCodes?.build();

        _$failedField = 'altSpellings';
        _altSpellings?.build();

        _$failedField = 'latlng';
        _latlng?.build();

        _$failedField = 'timezones';
        _timezones?.build();
        _$failedField = 'borders';
        _borders?.build();

        _$failedField = 'currencies';
        _currencies?.build();
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'translations';
        _translations?.build();

        _$failedField = 'regionalBlocs';
        _regionalBlocs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Country', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
