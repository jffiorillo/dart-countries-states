import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/models.api/streets_bcn_response_api_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'src/serializer/serializers.dart';

const _bcnRootUrl =
    'http://w20.bcn.cat/cartobcn/Cercador.ashx?refresh=False&adm=False';

class StreetProvider {
  Future<BuiltList<String>> getStreetsByName({@required String name}) async {
    var response = await http.post(_bcnRootUrl, body: 'q=$name');
    if (response.statusCode == 200) {
      final StreetsBcnResponseApiModel streets =
          standardSerializers.deserialize(jsonDecode(response.body),
              specifiedType:
                  FullType(BuiltList, [FullType(StreetsBcnResponseApiModel)]));
      return streets.results.map((item) => item.name);
    } else {
      return Future.error(response);
    }
  }
}
