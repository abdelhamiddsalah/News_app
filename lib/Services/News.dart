import 'package:dio/dio.dart';
import 'package:flutter_ozoo/models/Article.dart';

class getNews{
final dio = Dio();

Future<List<ArticleModel>> getHttp() async {
  Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=7fa945d766634de4a0d93cdcfe8527d8&category=general');
  Map<String , dynamic> jsondata = response.data;
  List<dynamic> articals = jsondata['articles'];
  List<ArticleModel> articlee = [];
  for (var article in articals) {
    ArticleModel armo = ArticleModel(source:Source(id: article['id'], name: article['name']) ,image: article["urlToImage"], title: article['title'], subtitle: article['description'],);
    articlee.add(armo);
  }
  return articlee;
}
}