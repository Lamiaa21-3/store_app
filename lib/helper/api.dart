import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  static get({required String url, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': ' Bearer $token',
      });
    }
    http.Response response = await http.get(Uri.parse(url), headers: headers);
    print('doneee1');
    if (response.statusCode == 200) {
      print('donee');
      return jsonDecode(response.body);
    } else {
      throw Exception(
          ' there are problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': ' Bearer $token',
      });
    }
    http.Response response = await http.post(
      Uri.parse(
        url,
      ),
      body: body,
      headers: headers,
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': ' application/json; charset=utf-8',
    });
    if (token != null) {
      headers.addAll({
        'Authorization': ' Bearer $token',
      });
    }
    print('url = $url body = $body token = $token');
    http.Response response = await http.post(
      Uri.parse(
        url,
      ),
      body: body,
      headers: headers,
    );
    if(response.statusCode == 200)
   {
     Map<String, dynamic> data = jsonDecode(response.body);
     print(data);
    return data;
    }
    else{
      throw Exception(' there are the promlem with statusCode ${response.statusCode}');
    }
  }
}
