import 'package:flutter/material.dart';
import 'Webview.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: WebViewApp(),
    ),
  );
}
