import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Part extends StatelessWidget {
  const Part({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Text("data")
          ],
        ),
      ),
    );
  }
}