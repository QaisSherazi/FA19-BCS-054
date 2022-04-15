import 'dart:html';
import 'package:kids_app/calculator.dart';
import 'package:kids_app/constantfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
import 'constantfile.dart';
import 'result_screen.dart';
import 'calculator.dart';
import 'dart:math';

enum Gender{
  Easy,
  Tough,
}
class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPagestate();
}

class _InputPagestate extends State<InputPage> {
  Gender selectGender;
  int sliderHeight=0;
  int sliderWeight=50;
  int sliderAge=0;
  String he='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guessing App'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        sliderHeight=Random().nextInt(100)+1;
                        selectGender=Gender.Easy;
                      });
                    },
                    colors: selectGender==Gender.Easy?activecolor:deactivecolor,
                    cardWidget: GestureDetector(
                      onTap: (){
                        },
                      child: RepeatTextandIconWidget(
                        iconData:FontAwesomeIcons.smile,
                        label: 'EASY',

                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        Text("hg");
                        selectGender=Gender.Tough;
                      });
                      },
                    colors: selectGender==Gender.Easy?activecolor:deactivecolor,
                    cardWidget: RepeatTextandIconWidget(
                      iconData:FontAwesomeIcons.sadTear,
                      label: 'TOUGH',
                    ),
                  ),
                ),
              ],
            ),
            ),
            Expanded(child: RepeatContainerCode(
              colors: Color((0xFF1D1E33)),
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Random Number Tange 1 To 100',style: klabel,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(sliderHeight.toString(),style: knumber,),

                    ],
                  ),
                  Slider(value: sliderHeight.toDouble(),
                      min: 0,
                      max: 100.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),

                      onChanged: (double newvalue){
                        setState(() {
                          sliderHeight=newvalue.round();
                        });
                      })

                ],
              ),
            ),
            ),
            Expanded(child: Row(
              children: [
                Expanded(child:  RepeatContainerCode(
                    colors: Color((0xFF1D1E33)),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('MAX',style: klabel,),
                        Text(sliderWeight.toString(),style: knumber,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIcon(
                                iconData:FontAwesomeIcons.minus,
                                onPress:(){
                                  setState(() {
                                    sliderWeight--;
                                  });
                                }
                            ),
                            SizedBox(width: 10.0,),
                            RoundIcon(
                                iconData:FontAwesomeIcons.plus,
                                onPress:(){
                                  setState(() {
                                    sliderWeight++;
                                  });
                                }
                            ),
                          ],
                        )
                      ],
                    )
                ),
                ),
                Expanded(child: RepeatContainerCode(
                    colors: Color((0xFF1D1E33)),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('MIN',style: klabel,),
                        Text(sliderAge.toString(),style: knumber,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIcon(
                                iconData:FontAwesomeIcons.minus,
                                onPress:(){
                                  setState(() {
                                    sliderAge--;
                                  });
                                }
                            ),
                            SizedBox(width: 10.0,),
                            RoundIcon(
                                iconData:FontAwesomeIcons.plus,
                                onPress:(){
                                  setState(() {
                                    sliderAge++;
                                  });
                                }
                            ),
                          ],
                        )
                      ],
                    )
                ),
                ),
              ],
            ),
            ),
            GestureDetector(
              onTap: (){
                CalculatorBrain calc = CalculatorBrain(height: sliderHeight,weight: sliderWeight,bmi:sliderHeight);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(
                  bmiresult: calc.calculateBMI(),
                  resulttext: calc.getResult(),
                  intrepetation: calc.getIntrepetation(),
                )));
              },
              child: Container(

                child:Center
                  (child: Text('CHECK',style: klargebutton,)),

                color:Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 20.0),
                width: double.infinity,
                height: 58.0,
              ),
            )
          ]),
    );
  }
}
class RoundIcon extends StatelessWidget {
  RoundIcon({@required this.iconData, @required this.onPress});

  final IconData iconData;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),

    );
  }
}
