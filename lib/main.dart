import 'package:flutter/material.dart';
import 'AnimatedWidgetApp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: MakeOwnAnimationWidgetApp(),
    ),
  );
}
