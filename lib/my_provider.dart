import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{

  int score = 0;

  add(){
    score++;
    notifyListeners();
  }

}