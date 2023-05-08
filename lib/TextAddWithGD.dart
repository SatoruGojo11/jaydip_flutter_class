import "dart:math";
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAddWithGD extends StatelessWidget {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Amazon✨',
          style: TextStyle(fontSize: 30, color: Colors.deepOrange),
        ),
      ),
      body: Center(
        child: Text(
          'Welcome Bro',
          style: GoogleFonts.pacifico(
            textStyle: TextStyle(
              fontSize: 40,
              color: Colors.green,
            )
          ),
        ),
      )
    );
  }

  randomNumber()
  {
    var number = (random.nextInt(10));
    return number;
  }
}
