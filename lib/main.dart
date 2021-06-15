import 'package:flutter/material.dart';
import 'package:flutter_8hour/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   
    double pi = 3.14;
    bool isMale = true;
    num temp = 3.44;

    var day = "Monday";
    const py = 3.14;
    final list = [1,2,3];



    return MaterialApp(
      home: HomePage()
    );
  }
}