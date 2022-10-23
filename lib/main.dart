import 'package:code_projects/provider/bottom_nav_provider.dart';
import 'package:code_projects/provider/news_provider.dart';
import 'package:code_projects/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*



Provider.of(context)

context.read()
context.watch()

Consumer()

Drawer()

BottomNavigationBar()

TapBar()

BottomSheet()



 */

void main() {
  runApp(
    MultiProvider(
      child: MyApp(),
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => BottomNavProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => NewsProvider(),
        )
      ],
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomeScreen());
  }
}
