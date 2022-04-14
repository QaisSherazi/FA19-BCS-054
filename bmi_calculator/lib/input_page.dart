import 'dart:html';
import 'package:bmi_calculator/constantfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
import 'constantfile.dart';
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPagestate();
}

class _InputPagestate extends State<InputPage> {
   Gender selectGender;
   int sliderHeight=180;
   int sliderWeight=60;
   int sliderAge=20;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
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
                      selectGender=Gender.male;
                    });
                  },
                  colors: selectGender==Gender.male?activecolor:deactivecolor,
                  cardWidget: RepeatTextandIconWidget(
                    iconData:FontAwesomeIcons.male,
                    label: 'MALE',
                  ),
                ),
              ),
          Expanded(
            child: RepeatContainerCode(
              onPressed: (){
                setState(() {
                  selectGender=Gender.female;
                });
              },
              colors: selectGender==Gender.male?activecolor:deactivecolor,
              cardWidget: RepeatTextandIconWidget(
                iconData:FontAwesomeIcons.female,
                label: 'FEMALE',
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
               Text('HEIGHT',style: klabel,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(sliderHeight.toString(),style: knumber,),
                   Text('cm',style: klabel,)
                 ],
               ),
               Slider(value: sliderHeight.toDouble(),
                   min: 120.0,
                   max: 220.0,
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
                Text('WEIGHT',style: klabel,),
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
            Text('AGE',style: klabel,),
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
          ),]),
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
