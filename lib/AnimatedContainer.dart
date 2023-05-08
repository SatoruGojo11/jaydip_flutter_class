import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  double w1 = 200;
  double h1 = 200;
  double r1 = 30;
  Random ran = Random();

  // Color c1 = Colors.amber;
  Gradient gc = LinearGradient(colors: [Colors.amber, Colors.yellow]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: w1,
              height: h1,
              child: FlutterLogo(),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                gradient: gc,
                borderRadius: BorderRadius.circular(r1),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    w1 = ran.nextDouble() * 200;
                    h1 = ran.nextDouble() * 200;
                    r1 = ran.nextDouble() * 50;
                    gc = LinearGradient(colors: [
                      Color.fromRGBO(ran.nextInt(255), ran.nextInt(255),
                          ran.nextInt(255), 1),
                      Color.fromRGBO(ran.nextInt(255), ran.nextInt(255),
                          ran.nextInt(255), 1),
                    ]);
                  });
                },
                icon: Icon(Icons.update),
                label: Text('Update')),
          ],
        ),
      ),
    );
  }
}
