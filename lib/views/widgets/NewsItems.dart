import 'package:flutter/material.dart';
import 'package:flutter_ozoo/Services/News.dart';
import 'package:flutter_ozoo/models/Article.dart';
class Newsitems extends StatelessWidget {
  const Newsitems({super.key});

  @override
  
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return FutureBuilder<News>(
        future: GetNews().getHttp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final news = snapshot.data!;
            return Container(
              height: size.height,
              child: ListView.builder(
                itemCount: news.articles?.length ?? 0,
                itemBuilder: (context, index) {
                  final article = news.articles![index];
                  return Column(
                
                    children: [
                      if (article.urlToImage != null && article.urlToImage!.isNotEmpty)
                      Image.network(article.urlToImage!)
                    else
                      Image.asset('assets/images/technology.jpeg', width: size.width,),
                      SizedBox(height: 10,),
                      Text(article.title.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(article.author.toString()),
                        ],
                      )
                    ],
                  );
                },
              ),
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      );
  }
}
  