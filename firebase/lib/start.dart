import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'button.dart';

import 'package:firebase/login.dart';
class HomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login SuccessFull'),),
      body: Center(child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
        },
    child: Container(

    child:Center
    (child: Text('Sign Out',style: button)),

    color:Color(0xFFEB1555),
    margin: EdgeInsets.only(top: 20.0),
    width: double.infinity,
    height: 58.0,
    ),

      ),),
    );
  }
}