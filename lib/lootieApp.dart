import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieuseApp extends StatefulWidget {
  const LottieuseApp({Key? key}) : super(key: key);

  @override
  State<LottieuseApp> createState() => _LottieuseAppState();
}

class _LottieuseAppState extends State<LottieuseApp>
    with SingleTickerProviderStateMixin {
  AnimationController? ltcontroller;

  @override
  void initState() {
    super.initState();
    ltcontroller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lotti Use App'),
      ),
      body: Column(
        children: [
          Container(
            child: Lottie.asset('assets/laughing.json'),
          ),
          ButtonBar(
            children: [
              IconButton(
                  onPressed: ltcontroller!.isCompleted
                      ? null
                      : () => ltcontroller!.forward(),
                  icon: Icon(Icons.skip_next)),
              IconButton(
                  onPressed: ltcontroller!.isAnimating
                      ? () => ltcontroller!.repeat()
                      : () => ltcontroller!.stop(),
                  icon: Icon(Icons.play_arrow)),
            ],
          ),
        ],
      ),
    );
  }
}
