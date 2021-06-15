import 'dart:html';

import "package:flutter/material.dart";
import 'package:flutter_8hour/utils/routes.dart';

class LoginPage extends StatefulWidget {

  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(children: [
          Image.asset("assets/images/login_image.jpg",fit: BoxFit.cover,),
          SizedBox(height:20),
          Text("Welcome $name", style:  
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
              ),
              onChanged: (value){
                name = value;
                setState(() {
                  
                });
              },
            ),
            TextFormField(
              obscureText: true,
              decoration : InputDecoration(
                hintText: "Enter Password",
                labelText: "Password"
              )
            ),
            SizedBox(height:20),
            InkWell(
              onTap: () async{
                
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds:1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
                child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 50 : 100,
                height: 50,
                alignment: Alignment.center,
                child: changeButton ? Icon(Icons.done,
                color: Colors.white,) :
                Text("Login",
                style: TextStyle(fontSize:15, color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.brown,
                  // shape: changeButton? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8)
                ),
                ),
            )
            // ElevatedButton(onPressed: (){
            //   Navigator.pushNamed(context, MyRoutes.homeRoute);
            // }, child: Text("Login"),
            // style: TextButton.styleFrom(minimumSize: Size(100,50)),)
            ],),
          )
        ],),
      )
    );
  }
}