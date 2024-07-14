import 'package:dio/dio.dart';

class getNews{
final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=7fa945d766634de4a0d93cdcfe8527d8');
  print(response);
}
}