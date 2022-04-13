import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class RepeatTextandIconWidget extends StatelessWidget {
  RepeatTextandIconWidget({required this.iconData,required this.label});
final IconData iconData;
final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.male,
          size: 85.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text('MALE', style: TextStyle(
          fontSize: 30.0,
        ),
        )],
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({required this.colors,required this.cardWidget});
  Color colors;
  final Widget cardWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(15.0),
      child: cardWidget,
      decoration: BoxDecoration(
        color: colors,
            borderRadius: BorderRadius.circular(10.0)
      ),
      );

}}
