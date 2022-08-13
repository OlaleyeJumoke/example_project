import 'dart:convert';

import 'package:example_project/model/data_model.dart';
import 'package:http/http.dart' as http;

class HttpAccess {
  apiMemeAccess() async {
    var memeData;
    var url_uri = Uri.https("api.imgflip.com", "/get_memes");
    var response = await http.get(url_uri);
    if (response.statusCode == 200) {
       memeData = MemeData.fromJson(json.decode(response.body));
    }
    return memeData;
  }
}
