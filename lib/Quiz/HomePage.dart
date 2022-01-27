import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Quiz/winScreen.dart';

import 'LostScreen.dart';


class HomePage extends StatefulWidget {
  static const routName = 'HomeQuestions';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentQuestion = 0;
  List<String> questions = [
    'Have you ever wrote a letter?',
    'Have you ever smoked a cigarette?',
    'Have you ever had a fight with someone who was too old?',
    'Have you ever been on the radio or on television?',
    'Have you ever stayed awake for an entire night?',
    'Have you ever broken something, like a window, and ran away?',
    'Have you ever won a contest and received a prize?',
    'Have you ever met a famous person or a celebrity?',
  ];

  int count = 0;
   Set<String> questionSet={'Have you ever wrote a letter?'};

  void getRandomElement(){
    var random = Random();
    for(int i=0;i<4;i++) {
      currentQuestion = random.nextInt(questions.length);
      questionSet.add(questions[currentQuestion]);
    }

  }

  int countYes = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRandomElement();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            margin: EdgeInsets.only(left: 200),
            child: Text(
              'Have Your Ever',
              style: TextStyle(
                fontSize: 25,
              ),
            )),
        backgroundColor: Colors.black,
        toolbarHeight: 100,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              questionSet.elementAt(count),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                fixedSize: MaterialStateProperty.all(Size(100, 20)),
              ),
              onPressed: () {
                if (count < 4) {
                  getRandomElement();
                  countYes++;
                  count++;
                  setState(() {});
                } else {
                  if (countYes > 2)
                    Navigator.pushReplacementNamed(context, WinScreen.routName);
                  else
                    Navigator.pushReplacementNamed(context, LostScreen.routName);
                }
              },
              child: Text(
                'Yes',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                fixedSize: MaterialStateProperty.all(Size(100, 20)),
              ),
              onPressed: () {
                if (count < 4) {
                  getRandomElement();
                  count++;
                  setState(() {});
                } else {
                  if (countYes > 2)
                    Navigator.pushReplacementNamed(context, WinScreen.routName);
                  else
                    Navigator.pushReplacementNamed(context, LostScreen.routName);
                }
              },
              child: Text(
                'No',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
