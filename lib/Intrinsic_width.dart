import 'package:flutter/material.dart';

class IntirinsicWidthApp extends StatefulWidget {
  const IntirinsicWidthApp({Key? key}) : super(key: key);

  @override
  State<IntirinsicWidthApp> createState() => _IntirinsicWidthAppState();
}

class _IntirinsicWidthAppState extends State<IntirinsicWidthApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intrinsic Width App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('First Button'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Second Button'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Third Button'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Fourth Button'),
          ),
        ],
      ),
    );
  }
}
