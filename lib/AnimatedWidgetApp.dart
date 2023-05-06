import 'package:flutter/material.dart';

class MakeOwnAnimationWidgetApp extends StatefulWidget {
  const MakeOwnAnimationWidgetApp({Key? key}) : super(key: key);

  @override
  State<MakeOwnAnimationWidgetApp> createState() =>
      _MakeOwnAnimationWidgetAppState();
}

class _MakeOwnAnimationWidgetAppState extends State<MakeOwnAnimationWidgetApp>
    with SingleTickerProviderStateMixin {
  AnimationController? Mycontroller;
  Animation<double>? sizeAnimation;
  Animation<Color?>? colorAnimation;

  @override
  void initState() {
    Mycontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    sizeAnimation = Tween<double>(
      begin: 100,
      end: 200,
    ).animate(Mycontroller!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Your Own Animation App'),
      ),
      body: Center(
        child: Column(
          children: [
            _MyAnimatedContainer(
              sizeAnimation: sizeAnimation,
            ),
            ElevatedButton(
              onPressed: () => Mycontroller?.forward(),
              child: Text('Forward Animation'),
            ),
            ElevatedButton(
              onPressed: () => Mycontroller?.reverse(),
              child: Text('Reverse Animation'),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyAnimatedContainer extends AnimatedWidget {

  _MyAnimatedContainer({Animation<double>? sizeAnimation,}) : super(listenable: sizeAnimation!);


  @override
  Widget build(BuildContext context) {
    final Animation<double> sizeAnimation = listenable as Animation<double>;

    return Container(
      child: Image.network(
          'https://thumbs.dreamstime.com/b/creative-mind-concept-hand-holding-colorful-brain-sketch-concrete-background-85126393.jpg'),
      height: sizeAnimation!.value,
      width: sizeAnimation!.value,
      padding: EdgeInsets.all(15),
    );
  }
}
