import 'dart:math';

class CalculatorBrain{
CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;
  double _bmi;
  String calculateBMI(){
    _bmi = weight/pow(height/100, 2);
        return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){
      return 'OVERWEIGHT';
    }
    else if (_bmi>18.5){
    return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }
  String getIntrepetation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight, Try to exercise';
    }
    else if (_bmi>18.5){
      return 'You have a Normal Body weight, Good Job!';
    }
    else{
      return 'You have a lower than normal body weight please eat a bit more';
    }
  }
}