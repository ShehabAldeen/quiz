import 'package:flutter/material.dart';
import 'Quiz/HomePage.dart';
import 'Quiz/LostScreen.dart';
import 'Quiz/winScreen.dart';

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routName:(buildContext)=>HomePage(),
        WinScreen.routName:(buildContext)=>WinScreen(),
        LostScreen.routName:(buildContext)=>LostScreen(),
      },
      initialRoute: HomePage.routName,
    );
  }

}