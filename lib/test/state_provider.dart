import 'package:flutter/material.dart';

class StateProvider extends ChangeNotifier{

  int num = 0;

  add(){
    num++;
    notifyListeners();
  }

  min(){
    num--;
    notifyListeners();
  }

}