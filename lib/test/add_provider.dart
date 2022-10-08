import 'package:flutter/material.dart';

class AddProvider extends ChangeNotifier{

  int index = 0;

  add(){
    index++;
    notifyListeners();
  }

}