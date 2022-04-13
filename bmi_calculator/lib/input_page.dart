import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';

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
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: [
              Expanded(child:new RepeatContainerCode(
                colors: Color((0xFF1D1E33)),
                cardWidget: RepeatTextandIconWidget(
                  iconData:FontAwesomeIcons.male,
                  label: 'MALE',
                ),
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


