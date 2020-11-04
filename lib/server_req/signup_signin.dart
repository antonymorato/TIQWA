import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'http://0.0.0.0:8080/api/auth';
Future<bool> signUp(
    {@required String username,
    @required String password,
    @required String email}) async {
  var headers = {'Content-Type': 'application/json'};
  var body = {
    'username': username,
    'password': password,
    'email': email,
    'roles': ['user']
  };

  var subUrl = '/signup';

  var response = await http.post(
    baseUrl + subUrl,
    headers: headers,
    body: body,
  );
  if (response.statusCode == 200) {}
}

Future<String> signIn(
    {@required String username, @required String password}) async {
  var headers = {'Content-Type': 'application/json'};
  var body = {
    'username': username,
    'password': password,
  };

  var subUrl = '/signin';

  var response = await http.post(
    baseUrl + subUrl,
    headers: headers,
    body: body,
  );
  if (response.statusCode == 200) {}
}
