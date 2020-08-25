import 'dart:convert';
import 'dart:async';
import 'struct/photo.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

Future<List<Photo>> fetchPhotos(http.Client client, Function(String) parserData, String url) async {
  final response = await client.get(url);

  return compute(parserData, response.body);
}

List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}