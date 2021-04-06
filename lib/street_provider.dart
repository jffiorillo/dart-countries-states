import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/models/supported_languages.dart';
import 'package:dart_countries_states/src/models.api/streets_bcn_response_api_model.dart';
import 'package:dart_countries_states/src/models.api/streets_bcn_street_api_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import 'src/serializer/serializers.dart';

class StreetProvider {
  final logger = new Logger();

  Future<BuiltList<StreetsBcnStreetApiModel>> getStreetsByName(String name,
      {LanguageCode languageCode: LanguageCode.es}) async {
    var response = await UserAgentClient(http.Client()).get(Uri.https(
        'w33.bcn.cat',
        'geoBCN/serveis/territori/vies',
        {'nom': name, 'lang': languageCode.name.toUpperCase()}));
    if (response.statusCode == 200) {
      logger.d("Response: ${response.body}");
      final StreetsBcnResponseApiModel streets =
          standardSerializers.deserialize(jsonDecode(response.body),
                  specifiedType: FullType((StreetsBcnResponseApiModel)))
              as StreetsBcnResponseApiModel;
      return streets.results;
    } else {
      logger.e("Error ${response.reasonPhrase} ${response.statusCode}");
      return Future.error(response);
    }
  }
}

class UserAgentClient extends http.BaseClient {
  final http.Client _inner;

  UserAgentClient(this._inner);

  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['content-type'] =
        "application/x-www-form-urlencoded; charset=UTF-8";
    return _inner.send(request);
  }
}
