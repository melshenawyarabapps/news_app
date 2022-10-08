import 'package:code_projects/test/buttons.dart';
import 'package:code_projects/test/view_num.dart';
import 'package:flutter/material.dart';

class TestState extends StatefulWidget {
  TestState({Key? key}) : super(key: key);

  @override
  State<TestState> createState() => _TestStateState();
}

class _TestStateState extends State<TestState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ViewNum(),
            SizedBox(
              height: 15,
            ),
            Buttons(
            ),
          ],
        ),
      ),
    );
  }
}
