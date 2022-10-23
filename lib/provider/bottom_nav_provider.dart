import 'package:code_projects/view/business/buisness.dart';
import 'package:code_projects/view/sciences/sciences.dart';
import 'package:code_projects/view/sports/sports.dart';
import 'package:flutter/material.dart';

class BottomNavProvider extends ChangeNotifier{

  int index = 0;

  List screens = [
    Business(),
    Sciences(),
    Sports(),
  ];

  List<BottomNavigationBarItem> items =[
    BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Business'
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.science_outlined),
        label: 'Sciences'
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.sports),
        label: 'Sports'
    ),
  ];

  changeIndex({required int index}){
    this.index = index;
    notifyListeners();
  }

}