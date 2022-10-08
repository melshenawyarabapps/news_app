import 'package:code_projects/test/state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewNum extends StatelessWidget {
  const ViewNum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${Provider.of<StateProvider>(context).num}',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }
}
