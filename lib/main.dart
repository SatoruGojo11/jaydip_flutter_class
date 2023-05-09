import 'package:flutter/material.dart';
import 'LottieApp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: LottieuseApp(),
    ),
  );
}
