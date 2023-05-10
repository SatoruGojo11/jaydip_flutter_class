import 'package:flutter/material.dart';
import 'ExtendedImage.dart';
import 'LottieApp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: ExtendedImageApp(),
    ),
  );
}
