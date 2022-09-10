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

  String? emailValue;
  String? passwordValue;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 60,
                      child: Image.asset(
                        'assets/images/login_photo.png',
                      )),
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Color(0xFF3FABF4),
                          Color(0xFF3ACED4),
                        ],
                      ).createShader(bounds);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      errorText: '',
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    onChanged: (String? value) {
                      emailValue = value;
                      print(emailValue.toString());
                    },
                    onFieldSubmitted: (value){
                      print('onFieldSubmitted done');
                    },
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'لا يجب ان يكون هذا الحقل فارغ';
                      }
                      else{
                        return null;
                      }

                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock_outlined),
                    ),
                    onChanged: (String? value) {
                      passwordValue = value;
                      print(passwordValue.toString());
                    },
                    keyboardType: TextInputType.visiblePassword,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'لا يجب ان يكون هذا الحقل فارغ';
                      } else if (value.length < 8) {
                        return 'لا يجب ان تكون  كلمة السر اقل من 8 احرف';
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        print('done');
                      }
                    },
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF3FABF4),
                            Color(0xFF3ACED4),
                          ],
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
Color(0xFF3FABF4),
Color(0xFF3ACED4),
 */
