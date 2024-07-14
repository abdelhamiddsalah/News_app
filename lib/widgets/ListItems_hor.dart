import 'package:flutter/material.dart';
import 'package:flutter_ozoo/models/Category_class.dart';
import 'package:flutter_ozoo/widgets/Category_cars.dart';

class List1 extends StatelessWidget {
  const List1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: nws.length,
          itemBuilder: (context, index){
            return card(cat: nws[index],);
          }
          ),
      );
  }
}