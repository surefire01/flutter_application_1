import 'dart:convert';

import 'package:http/http.dart' as http;

import 'api_exception.dart';

class ApiService {
  static Future get() async {
    const url = "https://jsonplaceholder.typicode.com/posts";

    final res = await http.get(Uri.parse(url));
    return _returnResponse(res);
  }

  static _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);

      case 400:
        throw BadRequestException(response.body.toString());
      case 403:
        throw UnauthorisedException(response.body.toString());

      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
