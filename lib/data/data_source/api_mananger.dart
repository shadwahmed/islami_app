import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:islami_app/data/models/RadioResponse.dart';

class ApiMananger {
  static Future<List<Radios>> getRadios() async {
    try {
      var url = Uri.parse("https://mp3quran.net/api/v3/radios");
      var response = await http.get(url);
      var json = jsonDecode(response.body);
      RadioResponse model = RadioResponse.fromJson(json);
      return model.radios ?? [];
    } catch (e) {
      throw e;
    }
  }
}
