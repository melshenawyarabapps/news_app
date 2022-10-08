import 'package:code_projects/quiz_provider.dart';
import 'package:code_projects/result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Answer extends StatefulWidget {
  Answer();


  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {


  @override
  Widget build(BuildContext context) {
    return Provider.of<QuizProvider>(context).index< Provider.of<QuizProvider>(context).answer.length
        ? Column(
            children: [
              ...Provider.of<QuizProvider>(context).answer[Provider.of<QuizProvider>(context).index].map((e) {
                return GestureDetector(
                  onTap: () {
                    context.read<QuizProvider>().addScore(newScore: e['score']);
                    context.read<QuizProvider>().changeIndex();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      e['answer'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              })
            ],
          )
        : Result(
    );
  }
}

/*



[
Widget,
...[
Widget
]
]


 */
