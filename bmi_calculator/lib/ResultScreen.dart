import 'package:bmi_calculator/constantfile.dart';
import 'package:bmi_calculator/containerfile.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
  Expanded(
    child: Container(
      child: Center(
        child: Text('Your RESULT',style: ktitlestyles2,),
      ),
    ),
  ),
  Expanded(
    flex: 5,
      child: RepeatContainerCode(
        colors:activecolor,
        cardWidget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Normal',style: ktitlestyles2,),
            Text('18.3',style: ktitlestyles2,),
            Text('BMI is low',style: ktitlestyles2,
            textAlign: TextAlign.center,)

          ],
        )

      )
  ),
  Expanded(
    child:   GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
      },
      child: Container(

        child:Center
          (child: Text('RECALCULATE',style: klargebutton,)),

        color:Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 20.0),
        width: double.infinity,
        height: 58.0,
      ),
    ),
  ),
],
      ),
    );
  }
}
