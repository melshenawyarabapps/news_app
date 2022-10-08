import 'package:flutter/material.dart';

class QuizProvider extends ChangeNotifier {
  int index = 0;
  int score = 0;
  List answer = [
    [
      {'answer': 'Black', 'score': 10},
      {'answer': 'white', 'score': 0},
      {'answer': 'Yellow', 'score': 0},
      {'answer': 'Red', 'score': 0},
    ],
    [
      {'answer': 'Player 1', 'score': 10},
      {'answer': 'Player 2', 'score': 0},
    ],
    [
      {'answer': 'Pizza', 'score': 10},
      {'answer': 'Koshary', 'score': 0},
      {'answer': 'Pasta', 'score': 0},
    ],
  ];
  List question = [
    "What's your fav color ?",
    "What's your fav player ?",
    "What's your fav meal ?"
  ];

  changeIndex() {
    index++;
    notifyListeners();
  }

  addScore({required int newScore}){
    score += newScore;
    notifyListeners();
  }

  restartApp() {
    score = 0;
    index = 0;
    notifyListeners();
  }
}
