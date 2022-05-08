import 'package:flutter/material.dart';
import 'button.dart';
import 'login.dart';

  class startpage extends StatefulWidget {
    @override
    State<startpage> createState() => _startpage();
  }
 class _startpage extends State<startpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome'),),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Expanded(
    child:   GestureDetector(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    },
    child: Container(

    child:Center
    (child: Text('EASY',style: button,)),

    color:Color(0xFFEB1555),
    margin: EdgeInsets.only(top: 20.0),
    width: double.infinity,
    height: 58.0,
    ),),),],


    ));
  }
}