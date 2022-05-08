import 'package:flutter/material.dart';
import 'package:firebase/login.dart';

import 'login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FireBase',
      theme: ThemeData(
          accentColor: Colors.orange,
          primarySwatch: Colors.blue
      ),
      home: LoginScreen(),
    );
  }
}