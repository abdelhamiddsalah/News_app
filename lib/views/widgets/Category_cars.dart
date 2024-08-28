import 'package:flutter/material.dart';
import 'package:flutter_ozoo/models/Category_class.dart';

class card extends StatelessWidget {
  const card({super.key, required this.index});
 final int index;
  @override
  Widget build(BuildContext context) {
    final item = category.nws[index];
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(item.image)),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(child: Text(item.name, style: TextStyle(color: Colors.white , 
          fontWeight: FontWeight.bold, fontSize: 18),)),),
    );
  }
}