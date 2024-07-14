import 'package:flutter/material.dart';
class Newsitems extends StatelessWidget {
  const Newsitems({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network("http://2.bp.blogspot.com/-y81kDfnuIKc/UZyzdCENFRI/AAAAAAAAAy8/ehz4Snftrzw/s1600/14.jpg", 
                width: double.infinity, height: 200,fit: BoxFit.cover,),
              ),
              const SizedBox(
                height: 12,
              ),
              Text("data data datta datada datadata datadata datadata datadata datadata datadata datadata datadata datadata data",
              maxLines: 2,
              overflow: TextOverflow.ellipsis
               , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 20),),
               const SizedBox(
                height: 8,
              ),
              Text("data data datadata datadata datadata datadata datadata datadata datadata datadata datadata datadata data",
              maxLines: 2,
              overflow: TextOverflow.ellipsis
               , style: TextStyle(color: Colors.grey , fontSize: 15),),
      ],
    );
  }
}