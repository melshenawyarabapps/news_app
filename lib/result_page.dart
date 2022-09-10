import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.age,
    required this.weight,
    required this.height,
    required this.gender,
  }) : super(key: key);

  final int age;
  final int weight;
  final int height;
  final String gender;

  @override
  Widget build(BuildContext context) {
    double result = weight / ((height / 100) * (height / 100));
    return Scaffold(
      backgroundColor: Color(0xff525251),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Result'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GENDER : $gender',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'HEIGHT : $height',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'WEIGHT : $weight',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'AGE : $age',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'RESULT : ${result.toStringAsFixed(2)}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
