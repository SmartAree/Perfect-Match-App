import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dressNumber = 1;
  int shoesNumber =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match Pairs', style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          fontFamily: 'Langar',
        ),),
        backgroundColor: Colors.purpleAccent,
        elevation: 8.0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Make a perfect Match', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.purple,
                fontFamily: 'Satisfy',
              ),),
            ),
            SizedBox(height: 30.0,
            width: 200.0,
            child: Divider(
              color: Colors.purple,
              thickness: 2.5,
            ),),SizedBox(height: 60.0,),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                      onPressed: (){
                        setState(() {
                          dressNumber = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset('images/dress$dressNumber.png')),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: (){
                        setState(() {
                          shoesNumber = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset('images/sandle$shoesNumber.png')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
