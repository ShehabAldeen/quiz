import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class IncommonClass extends StatelessWidget {
  String imagePath;
  IncommonClass(this.imagePath);

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
        child: Column(
          children: [
            Image.asset(imagePath,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                fixedSize: MaterialStateProperty.all(Size(130,50)),
              ),
              onPressed:(){
                Navigator.pushNamed(context,HomePage.routName);
              } ,
              child:Text('Play Again',style:
              TextStyle(color: Colors.black,fontWeight: FontWeight.w500,
                fontSize: 18,)),
            ),
          ],
        ),
      ),
    );
  }
}
