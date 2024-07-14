import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ozoo/models/Category_class.dart';
import 'package:flutter_ozoo/widgets/Category_cars.dart';
import 'package:flutter_ozoo/widgets/ListItems_col.dart';
import 'package:flutter_ozoo/widgets/ListItems_hor.dart';
import 'package:flutter_ozoo/widgets/NewsItems.dart';
class Toku extends StatelessWidget {
  const Toku({super.key});
//final category cat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
            Text("Cloud" , style: TextStyle(color: Colors.orange , fontWeight: FontWeight.bold),),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: List1(),),
            SliverToBoxAdapter(child:  SizedBox(height: 33,),),
            SliverToBoxAdapter(child: List2(),)
          ],
        ),
        /*child: Column(
          children: [
            List1(),
            SizedBox(height: 33,),
            Expanded(child: List2())
          ],
        ),*/
      )
    );
  }
}

