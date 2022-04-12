import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {



  @override
  State<InputPage> createState() => _InputPagestate();
}

class _InputPagestate extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child:Text('Body Text'),
      ),
    );
  }
}
