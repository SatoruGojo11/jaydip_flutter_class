import 'dart:math';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Amazon✨',
          style: TextStyle(fontSize: 30, color: Colors.deepOrange),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "",
              style: TextStyle(
                fontSize: 200,
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              height: 200,
              width: 200,
              child: Text(
                'Otp :- ${randomNumber()}',
                style: TextStyle(
                  fontFamily: 'Cartoon_blocks',
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  randomNumber() {
    var number = (999+random.nextInt(9001));
    return number;
  }
}
