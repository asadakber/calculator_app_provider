import 'package:flutter/material.dart';

class Calculator with ChangeNotifier {
  int _num1 = 0;
  int _num2 = 0;
  int _sum = 0;

  getSum() => _sum;

  setSum(int sum) => _sum = sum;


  final TextEditingController t1  = TextEditingController();
  final TextEditingController t2  = TextEditingController();


  void addtion() {
    _num1 = int.parse(t1.text);
    _num2 = int.parse(t2.text);
    _sum = _num1 +_num2;
    notifyListeners();
  }

  void sub() {
    _num1 = int.parse(t1.text);
    _num2 = int.parse(t2.text);
    _sum = _num1 -_num2;
    notifyListeners();
  }

  void multiply() {
    _num1 = int.parse(t1.text);
    _num2 = int.parse(t2.text);
    _sum = _num1 *_num2;
    notifyListeners();
  }

  void divide() {
    _num1 = int.parse(t1.text);
    _num2 = int.parse(t2.text);
    _sum = _num1 ~/_num2;
    notifyListeners();
  }

  void clear() {
   t1.text = "0";
   t2.text = "0";
   notifyListeners();
  }
}