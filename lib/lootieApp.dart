import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieuseApp extends StatefulWidget {
  const LottieuseApp({Key? key}) : super(key: key);

  @override
  State<LottieuseApp> createState() => _LottieuseAppState();
}

class _LottieuseAppState extends State<LottieuseApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lotti Use App'),
      ),
      body: Center(child: Lottie.asset('assets/laughing.json')),
    );
  }
}
