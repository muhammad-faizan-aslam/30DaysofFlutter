import 'package:flutter/material.dart';
import 'package:flutter_8hour/pages/home_page.dart';
import 'package:flutter_8hour/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      // home: HomePage(),
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        // fontFamily: GoogleFonts.lato().fontFamily
        fontFamily: GoogleFonts.quando().fontFamily
      ),
      darkTheme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.red
      ),
      // initialRoute: "/home",
      routes: {
        "/":(context)=> LoginPage(),
        "/home":(context)=> HomePage(),
        "/login": (context)=> LoginPage()
      },
    );
  }
}