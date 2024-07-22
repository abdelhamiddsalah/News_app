import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ozoo/Services/News.dart';
import 'package:flutter_ozoo/models/Article.dart';
import 'package:flutter_ozoo/widgets/NewsItems.dart';

class List2 extends StatefulWidget {
  const List2({super.key});

  @override
  State<List2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<List2> {
  List<ArticleModel> ars=[];
  @override
  void initState() {
    super.initState();
    newMethod();
  }

  Future<void> newMethod() async {
    ars=await getNews().getHttp();
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        
        child: ListView.builder(
          //scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ars.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(bottom : 16),
              child:  Newsitems(art: ars[index],),
            );
          }
          ),
      );;
  }
}