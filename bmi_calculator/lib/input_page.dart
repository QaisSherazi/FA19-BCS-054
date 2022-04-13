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
             children: [
               Text('HEIGHT',style: klabel,),
             ],
           ),
          ),
          ),
          Expanded(child: Row(
          children: [
          Expanded(child:  RepeatContainerCode(
            colors: Color((0xFF1D1E33)),
            cardWidget: RepeatTextandIconWidget(
              iconData:FontAwesomeIcons.female,
              label: 'FEMALE',
            ),
          ),
    ),
    Expanded(child: RepeatContainerCode(
      colors: Color((0xFF1D1E33)),
      cardWidget: RepeatTextandIconWidget(
        iconData:FontAwesomeIcons.female,
        label: 'FEMALE',
      ),
    ),),
    ],
    ),
          ),]),

      );

  }
}


