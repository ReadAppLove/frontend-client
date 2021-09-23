import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:readapp/config/http_config.dart';
import 'package:readapp/models/volume.dart';
import 'package:readapp/models/volume_category.dart';

class VolumeCategoryController {
  static Future<List<VolumeCategory>> list(String locale) async {
    List<VolumeCategory> _categories = <VolumeCategory>[];

    var url = Uri.https(
        GATEWAY_URL, '/prod/api/v1/volume_categories', {'locale': locale});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      var items = jsonResponse['items'];

      for (dynamic item in items) {
        _categories.add(VolumeCategory.fromJson(item));
      }

      return _categories;
    }

    throw 'Request failed with status: ${response.statusCode}.';
  }

  static Future<List<Volume>> getVolumes({required String categoryId}) async {
    List<Volume> volumes = <Volume>[];

    var url = Uri.https(
        GATEWAY_URL, '/prod/api/v1/volume_categories/'+categoryId+'/volumes',{'locale':'it_IT'});

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

    throw 'Request failed with status: ${response.statusCode}.';
  }
}
