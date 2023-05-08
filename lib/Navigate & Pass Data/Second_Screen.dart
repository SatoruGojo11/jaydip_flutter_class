import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {

  final user_name;
  Home_Screen({required this.user_name});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome ${widget.user_name}'),
      ),
    );
  }
}
