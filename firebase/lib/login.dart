import 'dart:html';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase/start.dart';


class LoginScreen extends StatelessWidget {
  @override

  late String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      body: Column(
        children: [
          Text("Enter Your Email or Password to Enter"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
              onChanged: (value) {
               // setState(() {
                 // _email = value.trim();
                //});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: (value) {
               // setState(() {
                 // _password = value.trim();
                //});
              },
            ),

          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                FlatButton(
                    color:Colors.grey,
                    child: Text('Sign in'),
                    onPressed: (){
                      auth.signInWithEmailAndPassword(email: _email, password: _password).then((_){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
                      });

                    }),
                RaisedButton(
                  color: Colors.grey,
                  child: Text('Sign up'),
                  onPressed: (){
                    auth.createUserWithEmailAndPassword(email: _email, password: _password).then((_){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));

                    });
                    },),
                RaisedButton(
                    color: Colors.grey,
                    child: Text('Forget Password'),
                    onPressed: (){})
              ])
        ],),
    );
  }
}