import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:readapp/config/http_config.dart';
import 'package:readapp/models/volume.dart';

class VolumeController {
  static Future<List<Volume>> list(
      {required String q,
      required int maxResults,
      required int startIndex,
      required String langRestrict}) async {
    List<Volume> volumes = <Volume>[];

    var url = Uri.https(GATEWAY_URL, '/prod/api/v1/volumes', {
      'q': q,
      'maxResults': maxResults.toString(),
      'startIndex': startIndex.toString(),
      'langRestrict': langRestrict,
    });

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      var items = jsonResponse['items'];

      for (dynamic item in items) {
        volumes.add(Volume.fromJson(item));
      }

      return volumes;
    }

    // throw 'Request failed with status: ${response.statusCode}.';
    throw 'Request failed with status: $maxResults ${response.body}.';
  }

  static Future<Volume> getById(String id) async {
    var url = Uri.https(GATEWAY_URL, '/prod/api/v1/volumes/' + id);

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      return Volume.fromJson(jsonResponse);
    }

    throw 'Request failed with status: ${response.statusCode}.';
  }
}
