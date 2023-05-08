import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedbuilderApp extends StatefulWidget {
  const AnimatedbuilderApp({Key? key}) : super(key: key);

  @override
  State<AnimatedbuilderApp> createState() => _AnimatedbuilderAppState();
}

class _AnimatedbuilderAppState extends State<AnimatedbuilderApp>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    var rotateAnimation = Tween<double>(begin: 0, end: pi).animate(controller!);

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Animated Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: rotateAnimation,
              child: FlutterLogo(
                size: 200,
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: rotateAnimation.value,
                  child: child,
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () => controller.forward(),
                child: Text('Transform')),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => controller.reverse(), child: Text('Reverse')),
          ],
        ),
      ),
    );
  }
}
