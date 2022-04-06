import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';


class SplashScreen extends StatefulWidget {
 // const SplashScreen({Key? key}) :super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();

  }
  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 5000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>QuizPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/IMG_20200420_122302_386.jpg'),
                radius: 50.0,
              ),
              Text(
                'Qais Mehdi',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    Text(
                      '0673200855',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    )

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    Text(
                      'sherazi.qais@gmail.com',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    )

                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}