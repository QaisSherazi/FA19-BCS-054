import 'package:flutter/material.dart';

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
              ),
    ),
          Expanded(child: RepeatContainerCode(
            colors: Color((0xFF1D1E33)),
          ),
          ),
          ],
          ),
          ),
          Expanded(child: RepeatContainerCode(
            colors: Color((0xFF1D1E33)),
          ),
          ),
          Expanded(child: Row(
          children: [
          Expanded(child:  RepeatContainerCode(
            colors: Color((0xFF1D1E33)),
          ),
    ),
    Expanded(child: RepeatContainerCode(
      colors: Color((0xFF1D1E33)),
    ),),
    ],
    ),
          ),]),

      );

  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({required this.colors});
  Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colors,
            borderRadius: BorderRadius.circular(10.0)
      ),
      );

}}
