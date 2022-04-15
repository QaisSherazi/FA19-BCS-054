import 'dart:math';
import 'input_page.dart';
class CalculatorBrain{
  CalculatorBrain({this.height,this.weight,this.bmi});

  final int height;
  final int weight;

  int bmi;
  String calculateBMI(){

    return bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(bmi>=25){
      return 'HIGH';
    }
    else if (bmi>18.5){
      return 'Exact Number';
    }
    else{
      return 'LOW';
    }
  }
  String getIntrepetation(){
    if(bmi>=25){
      return 'You are Too High';
    }
    else if (bmi>18.5){
      return 'You have a Normal Body weight, Good Job!';
    }
    else{
      return 'You have a lower than normal body weight please eat a bit more';
    }
  }
}