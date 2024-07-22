import 'package:flutter/material.dart';
import 'package:flutter_ozoo/models/Article.dart';
class Newsitems extends StatelessWidget {
  const Newsitems({super.key, required this.art});
 final ArticleModel art;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(art.image?? 'text',
                width: double.infinity, height: 200,fit: BoxFit.cover,),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(art.title?? 'tty',
              maxLines: 2,
              overflow: TextOverflow.ellipsis
               , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 20),),
               const SizedBox(
                height: 8,
              ),
              Text(art.subtitle??'',
              maxLines: 2,
              overflow: TextOverflow.ellipsis
               , style: TextStyle(color: Colors.grey , fontSize: 15),),
      ],
    );
  }
}