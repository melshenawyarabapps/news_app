import 'package:code_projects/my_home_page.dart';
import 'package:code_projects/my_provider.dart';
import 'package:code_projects/quiz_provider.dart';
import 'package:code_projects/test/add_provider.dart';
import 'package:code_projects/test/test_provider.dart';
import 'package:code_projects/test/val.dart';
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
              providers: [

                ChangeNotifierProvider(
                  create: (ctx){
                    return MyProvider();
                  },
                ),
                ChangeNotifierProvider(
                  create: (ctx){
                    return AddProvider();
                  },
                )
              ],
                child: MyApp()
            )
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
      routes: {
        'home': (ctx) {
          return MyHomePage();
        },
        'val': (ctx) {
          return Validator();
        },
      },
      home:TestProvider(),
    );
  }
}
