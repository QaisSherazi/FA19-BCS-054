import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
const activecolor= Color(0xFF1D1E33);
const deactivecolor= Color(0xFF111328);
enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {



  @override
  State<InputPage> createState() => _InputPagestate();
}

class _InputPagestate extends State<InputPage> {
  Color maleColor = deactivecolor;
  Color femaleColor= activecolor;
  void UpdateColor(Gender gendertype) {
    if (gendertype == Gender.male) {
      maleColor = activecolor;
      femaleColor = deactivecolor;
    }
    if (gendertype == Gender.female) {
      femaleColor = activecolor;
      maleColor = deactivecolor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: [
              Expanded(child:GestureDetector(
                onTap: (){
                  setState(() {
                    UpdateColor(Gender.male);
                  });
                },
                child: RepeatContainerCode(
                  colors: maleColor,
                  cardWidget: RepeatTextandIconWidget(
                    iconData:FontAwesomeIcons.male,
                    label: 'MALE',
                  ),
                ),
              ),
    ),
          Expanded(child:GestureDetector(
            onTap: (){
              setState(() {
                UpdateColor(Gender.female);
              });
            },
            child: RepeatContainerCode(
              colors: femaleColor,
              cardWidget: RepeatTextandIconWidget(
                iconData:FontAwesomeIcons.female,
                label: 'FEMALE',
              ),
            ),
          ),
          ),
          ],
          ),
          ),
          Expanded(child: RepeatContainerCode(
            colors: Color((0xFF1D1E33)),
            cardWidget: RepeatTextandIconWidget(
              iconData:FontAwesomeIcons.female,
              label: 'FEMALE',
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


