import 'package:flutter/material.dart';

class BaselineApp extends StatefulWidget {
  const BaselineApp({Key? key}) : super(key: key);

  @override
  State<BaselineApp> createState() => _BaselineAppState();
}

class _BaselineAppState extends State<BaselineApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baseline App'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.deepOrange),
          child: Baseline(
            baseline: 70,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.indigo),
            ),
          ),
        ),
      ),
    );
  }
}
