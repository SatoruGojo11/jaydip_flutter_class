import 'package:flutter/material.dart';
import 'ExtendedImage.dart';
import 'LottieApp.dart';
import 'Videoplayer.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: VideoPlayerApp(),
    ),
  );
}
