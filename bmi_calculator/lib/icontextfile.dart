import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RepeatTextandIconWidget extends StatelessWidget {
  RepeatTextandIconWidget({@required this.iconData,this.label});
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