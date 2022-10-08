import 'package:code_projects/test/state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Provider.of<StateProvider>(context, listen: false).add();
          },
          child: Icon(Icons.add),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<StateProvider>(context, listen: false).min();
          },
          child: Icon(Icons.minimize),
        )
      ],
    );
  }
}
