import "package:flutter/material.dart";
import "package:flutter_ozoo/Services/News.dart";

import "package:flutter_ozoo/views/Home.dart";

void main(List<String> args) {
  getNews().getHttp();
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Toku(),
    );  
  }
}