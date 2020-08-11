import 'dart:io';

class Calculator {
  double firstNum;
  double secondNum;

  Calculator(double firstNum, double secondNum)
  {
    this.firstNum=firstNum;
    this.secondNum=secondNum;
  }

  double additionProcess(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double multiplicationProcess(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }

  double subtractionProcess(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }

  double divisionProcess(double a, double secondNum) {
    return firstNum / secondNum;
  }

}