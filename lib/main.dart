import 'package:code_projects/bmi_home_page.dart';
import 'package:flutter/material.dart';

/*
App icon & name

ListView & GridView

Gradient

 */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BMIHomePage()
    );
  }
}

/*
Color(0xFF3FABF4),
Color(0xFF3ACED4),
 */
