import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';

class ApiServices {
  static final Client _client = Client();

  static Future<List<dynamic>?> getNumber() async {
    try {
      Response response = await _client.get(Uri.parse(
          'https://www.randomnumberapi.com/api/v1.0/random?min=100&max=1000&count=1'));
      List<dynamic> myList = jsonDecode(response.body) as List<dynamic>;
      log(myList[0].toString());
      return myList;
    } catch (e) {
      return null;
    }
  }
}
