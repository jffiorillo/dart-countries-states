import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/models/streets_info.dart';
import 'package:dart_countries_states/models/supported_languages.dart';
import 'package:dart_countries_states/src/models.api/streets_bcn_response_api_model.dart';
import 'package:http/http.dart' as http;

import 'src/serializer/serializers.dart';

const _bcnRootUrl =
    'http://w20.bcn.cat/cartobcn/Cercador.ashx?refresh=False&adm=False&m=geocoding.llistacarrers&lang=';

class StreetProvider {
  Future<List<StreetInfo>> getStreetsByName(
      {String name, LanguageCode languageCode: LanguageCode.es}) async {
    assert(languageCode != null);
    var response = await UserAgentClient(http.Client())
        .post(_bcnRootUrl + languageCode.name.toUpperCase(), body: 'q=$name');
    if (response.statusCode == 200) {
      print("Response: ${response.body}");
      final StreetsBcnResponseApiModel streets =
          standardSerializers.deserialize(jsonDecode(response.body),
              specifiedType: FullType((StreetsBcnResponseApiModel)));
      return streets.results
          .map((item) => StreetInfo.fromApi(item))
          .toList(growable: false);
    } else {
      print("Error ${response.reasonPhrase} ${response.statusCode}");
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
