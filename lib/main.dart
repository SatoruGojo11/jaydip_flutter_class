import 'package:flutter/material.dart';
import 'package:jaydip_flutter/youtubeplayer.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: YoutubePlayerApp(),
    ),
  );
}
