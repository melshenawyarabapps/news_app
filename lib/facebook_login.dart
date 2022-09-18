import 'package:code_projects/facebook_home.dart';
import 'package:flutter/material.dart';

class FacebookLogin extends StatelessWidget {
  FacebookLogin({Key? key}) : super(key: key);

  String nameController = '';
  String passwordController = '';
GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'f',
                      style: TextStyle(
                          color: Colors.blue.shade700,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name or Email',
                      labelStyle: TextStyle(color: Colors.black),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    onChanged: (value) {
                      nameController = value;
                    },
                    validator: (value){
                      if(value==null||value.isEmpty)
                        return 'حقل مطلوب';
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    onChanged: (value) {
                      passwordController = value;
                    },
                    validator: (value){
                      if(value==null||value.isEmpty)
                        return 'حقل مطلوب';
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    if(_formKey.currentState!.validate()){
                      Navigator.pushReplacementNamed(context, 'home',);
                    }

                  },
                  child: Container(
                    color: Colors.blue.shade900,
                    height: 50,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
