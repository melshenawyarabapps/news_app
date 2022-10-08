import 'package:code_projects/answer.dart';
import 'package:code_projects/question.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/idea.jpg',
                height: 120,
              ),
              SizedBox(
                height: 15,
              ),
              Question(
              ),
              SizedBox(
                height: 15,
              ),
              Answer(

              )
            ],
          ),
        ),
      ),
    );
  }
}
