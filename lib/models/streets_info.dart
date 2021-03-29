import 'package:dart_countries_states/src/models.api/streets_bcn_street_api_model.dart';

class StreetInfo {
  final String? id;
  final String? rawText;
  final String? fixedText;

  StreetInfo(this.id, this.rawText, this.fixedText);

  factory StreetInfo.fromApi(StreetsBcnStreetApiModel api) {
    final values = api.name?.split(",");
    values?.last = values.last + " ";
    return StreetInfo(api.id, api.name, values?.reversed.join());
  }
}
