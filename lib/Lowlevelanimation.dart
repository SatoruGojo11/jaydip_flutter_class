import 'package:flutter/material.dart';

class AnimationinsimplewidgetApp extends StatefulWidget {
  const AnimationinsimplewidgetApp({Key? key}) : super(key: key);

  @override
  State<AnimationinsimplewidgetApp> createState() =>
      _AnimationinsimplewidgetAppState();
}

class _AnimationinsimplewidgetAppState extends State<AnimationinsimplewidgetApp>
    with SingleTickerProviderStateMixin {
  AnimationController? newcontroller;
  CurvedAnimation? curvedAnimation;
  Animation<double>? sizeAnimation;
  Animation<Color?>? colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    newcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    curvedAnimation =
        CurvedAnimation(curve: Curves.easeIn, parent: newcontroller!);
    sizeAnimation =
        Tween<double>(begin: 100, end: 200).animate(curvedAnimation!);
    colorAnimation = ColorTween(begin: Colors.pinkAccent, end: Colors.amber)
        .animate(curvedAnimation!);

    newcontroller!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var a = newcontroller!.isAnimating;
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation in Simple Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: FlutterLogo(),
              color: colorAnimation!.value,
              height: sizeAnimation!.value,
              width: sizeAnimation!.value,
            ),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: newcontroller!.isCompleted
                    ? null
                    : () => newcontroller!.forward(),
                child: Text('Transform')),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: newcontroller!.isDismissed
                    ? null
                    : () => newcontroller!.reverse(),
                child: Text('Reverse')),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: newcontroller!.isCompleted
                    ? null
                    : () => newcontroller!.repeat(),
                child: Text('Play')),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: newcontroller!.isDismissed
                    ? null
                    : () => newcontroller!.stop(),
                child: Text('Pause')),
          ],
        ),
      ),
    );
  }
}
