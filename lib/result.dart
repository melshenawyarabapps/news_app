import 'package:code_projects/quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${context.read<QuizProvider>().score}',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            context.read<QuizProvider>().restartApp();
          },
          child: Text(
            'Restart the app ? ',
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
