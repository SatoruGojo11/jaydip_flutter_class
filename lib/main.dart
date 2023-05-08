import 'package:flutter/material.dart';
import 'lootieApp.dart';

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
