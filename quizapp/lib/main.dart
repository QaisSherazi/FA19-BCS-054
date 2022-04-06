import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/splashscreen.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


QuizBrain quizBrain = QuizBrain();

void main() => runApp(QuizApp());
class Quizsheet extends StatelessWidget {
 //const Quizsheet({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(),

      drawer: Drawer(
        child: Text('qais'),
      ),
    );}
}
class QuizApp extends StatelessWidget {

  @override

  Widget build(BuildContext context)  {
    return MaterialApp(
      home: SplashScreen(),
    );

    }
}



class QuizPage extends StatefulWidget {

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage>
{
  List<Icon> scoreKeeper = [];
  int _counter=10;
  Timer timer;
  void timerstart()
  {
    _counter=30;
    timer=Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(_counter>0)
        {
          _counter--;
        }
        else{
          if(quizBrain.isFinished()==false)
          {
            _counter=30;
            quizBrain.nextQuestion();
            scoreKeeper.add(
              Icon(
                Icons.close,
                color: Colors.red,
              ),
            );
          }

        }
      });
    });
  }


  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finshed',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  void initState()
  {
    super.initState();
    timerstart();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        Expanded(child: Scaffold(appBar: AppBar(  title: Text("Quiz App    Qais Mehdi ")
        ),
          drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(

            color: Colors.blue,
          ),
          child: Text('Drawer Header',
          style: TextStyle(color: Colors.white,
          fontSize: 24,
          ),),

        ),
        ListTile(
          title: const Text('Name: Qais Mehdi'),

          onTap: () {},
        ),
        ListTile(

          title: const Text('Email : sherazi.qais@gmail.com'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Contact:sherazi.qais@yahoo.com'),
          onTap: () {Navigator.pop(context);
          },
        ),
      ],
    ),

    ),

          ) ,
        ),
        Expanded(child: Align(

          alignment: Alignment(0.0,3.8),
          child: Text
            ("$_counter",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
        ),),
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/