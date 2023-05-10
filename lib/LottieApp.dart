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
  bool play = true;

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
            child: Container(
              height: 300,
              child: Lottie.asset('assets/cycling_lt.json',
                  controller: ltcontroller),
              width: 200,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: ltcontroller!.isCompleted
                      ? null
                      : () => ltcontroller!.forward(),
                  icon: Icon(Icons.skip_next)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      play == !play;
                      play
                          ? () => ltcontroller!.repeat()
                          : () => ltcontroller!.stop();
                    });
                  },
                  icon: Icon(play ? Icons.play_arrow : Icons.pause)),
              IconButton(
                  onPressed: ltcontroller!.isCompleted
                      ? null
                      : () => ltcontroller!.reverse(),
                  icon: Icon(Icons.skip_previous)),
            ],
          ),
        ],
      ),
    );
  }
}
