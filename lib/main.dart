import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?format=json&key=43804860";
void main() async {
  http.Response response = await http.get(Uri.parse(request));
  print(jsonDecode(response.body));
  runApp(MaterialApp(home: Container()));
}
