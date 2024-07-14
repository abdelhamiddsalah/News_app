import 'package:flutter/material.dart';
import 'package:flutter_ozoo/models/Category_class.dart';
import 'package:flutter_ozoo/widgets/Category_cars.dart';
import 'package:flutter_ozoo/widgets/NewsItems.dart';

class List2 extends StatelessWidget {
  const List2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        
        child: ListView.builder(
          //scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(bottom : 16),
              child: const Newsitems(),
            );
          }
          ),
      );
  }
}