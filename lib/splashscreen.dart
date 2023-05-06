import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashscreenApp extends StatefulWidget {
  const SplashscreenApp({Key? key}) : super(key: key);

  @override
  State<SplashscreenApp> createState() => _SplashscreenAppState();
}

class _SplashscreenAppState extends State<SplashscreenApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
        Duration(
          seconds: 10,
        ), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FlutterLogo(
            size: 300,
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
