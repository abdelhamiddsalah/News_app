class ArticleModel{
  String? title;
  String? image;
  String? subtitle;
  Source? source;
ArticleModel({required this.image , required this.title , required this.subtitle, required Source source});

}
class Source{
  int? id;
  String? name;
Source({ required this.id , required this.name});

}