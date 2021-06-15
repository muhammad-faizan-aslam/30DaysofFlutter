import 'dart:html';

import "package:flutter/material.dart";
import 'package:flutter_8hour/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(children: [
          Image.asset("assets/images/login_image.jpg",fit: BoxFit.cover,),
          SizedBox(height:20),
          Text("Welcome", style:  
          TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,
                    ),),
          SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(children: [
              TextFormField(
              decoration : InputDecoration(
                hintText: "Enter username",
                labelText: "Username"
              )
            ),
            TextFormField(
              obscureText: true,
              decoration : InputDecoration(
                hintText: "Enter Password",
                labelText: "Password"
              )
            ),
            SizedBox(height:20),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            }, child: Text("Login"),
            style: TextButton.styleFrom(minimumSize: Size(100,50)),)
            ],),
          )
        ],),
      )
    );
  }
}