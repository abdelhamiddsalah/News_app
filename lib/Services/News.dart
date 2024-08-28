import 'dart:convert';
import 'package:flutter_ozoo/models/Article.dart';
import 'package:http/http.dart' as http;

class GetNews {
  Future<News> getHttp() async {
    final response = await http.get(
      Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=7fa945d766634de4a0d93cdcfe8527d8'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      return News.fromJson(json);
    } else {
      throw Exception('Failed to load news: ${response.statusCode}');
    }
  }
}
