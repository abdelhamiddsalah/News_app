import 'package:flutter/material.dart';
import 'package:flutter_ozoo/models/Category_class.dart';

class card extends StatelessWidget {
  const card({super.key, required this.cat});
  final category cat;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(cat.image)),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(child: Text(cat.name, style: TextStyle(color: Colors.white , 
          fontWeight: FontWeight.bold, fontSize: 18),)),),
    );
  }
}