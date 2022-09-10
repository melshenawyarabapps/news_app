import 'package:code_projects/result_page.dart';
import 'package:flutter/material.dart';

class BMIHomePage extends StatefulWidget {
  BMIHomePage({Key? key}) : super(key: key);

  @override
  State<BMIHomePage> createState() => _BMIHomePageState();
}

class _BMIHomePageState extends State<BMIHomePage> {
  double sliderValue = 100;
  bool? gender;

  int weight = 50;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff525251),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        gender = true;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: gender == true ? Colors.red : Colors.black,
                            width: 12,
                          ),
                        ),
                        child: Icon(
                          Icons.male,
                          color: Colors.black,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        gender = false;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: gender == false ? Colors.red : Colors.black,
                            width: 12,
                          ),
                        ),
                        child: Icon(
                          Icons.female,
                          color: Colors.black,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${sliderValue.round()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' cm',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Slider(
                      value: sliderValue,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                      },
                      activeColor: Colors.red,
                      inactiveColor: Colors.blue.withOpacity(0.3),
                      min: 100,
                      max: 220,
                      divisions: 120,
                      label: '${sliderValue.round()}',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (weight > 50) {
                                    weight--;
                                    setState(() {});
                                  }
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new_sharp,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (weight < 100) {
                                    weight++;
                                    setState(() {});
                                  }
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (age > 19) {
                                    age--;
                                    setState(() {});
                                  }
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new_sharp,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (age < 100) {
                                    age++;
                                    setState(() {});
                                  }
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                if (gender != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => ResultPage(
                        age: age,
                        weight: weight,
                        height: sliderValue.round(),
                        gender: gender == true ? 'Male' : 'Female',
                      ),
                    ),
                  );
                } else {
                  print('Null');
                }
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 20),
                margin: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                      letterSpacing: 1.8,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
