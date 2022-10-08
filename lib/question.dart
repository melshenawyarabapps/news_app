import 'package:code_projects/quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Question extends StatelessWidget {
  Question();

//Provider.of<QuizProvider>(context).index
  @override
  Widget build(BuildContext context) {
    return Provider.of<QuizProvider>(context).index <
            Provider.of<QuizProvider>(context).question.length
        ? Text(
            Provider.of<QuizProvider>(context)
                .question[Provider.of<QuizProvider>(context).index],
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          )
        : Container();
  }
}
