import 'dart:convert';
import 'dart:io';
import 'calculator.dart';

void main() {
  print("****VBT Hesap Makinesi Ekranına Hoşgeldiniz****\n");
  print("İşlem yapmak istediğiniz ilk sayı nedir?");
  double firstNum = double.parse(stdin.readLineSync()); //stringi bir nevi integere dönüştürüyosun
  print("İşlem yapmak istediğiniz ikinci sayı nedir?");
  double secondNum = double.parse(stdin.readLineSync()); //stringi bir nevi integere dönüştürüyosun
  Calculator hesaplama = new Calculator(firstNum, secondNum);
  print("Yapmanız gereken tek şey toplama için '+', çıkarma için '-', çarpma için '*', bölme için '/' işaretlerinden birini yazmanız, çıkmak için 'kapat' yazabilirsiniz");
  String expression = stdin.readLineSync(encoding: Encoding.getByName("utf-8")); //Bu string bir ifade almak için

  switch (expression) {
    case "-":
      print("${hesaplama.firstNum}  - ${hesaplama.secondNum}  = ${hesaplama.subtractionProcess(firstNum, secondNum)}");
      print("Tekrar bir işlem yapmak isterseniz buradayız :)");
      break;
    case "*":
      print("${hesaplama.firstNum} *  ${hesaplama.secondNum}  = ${hesaplama.multiplicationProcess(firstNum, secondNum)}");
      print("Tekrar bir işlem yapmak isterseniz buradayız :)");
      break;
    case "+":
      print("${hesaplama.firstNum}  + ${hesaplama.secondNum}  = ${hesaplama.additionProcess(firstNum, secondNum)}");
      print("Tekrar bir işlem yapmak isterseniz buradayız :)");
      break;
    case "/":
      print("${hesaplama.firstNum} / ${hesaplama.secondNum}  = ${hesaplama.divisionProcess(firstNum, secondNum)}");
      print("Tekrar bir işlem yapmak isterseniz buradayız :)");
      break;
    case "kapat":
      print("Çıkmak istediniz.");
      break;
    default:
      print("Girdiğiniz değer eksik, hatalı veya çıkmak istediniz. Tekrar görüşmek üzere");
  }
}
