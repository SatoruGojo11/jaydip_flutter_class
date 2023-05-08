import 'package:flutter/material.dart';

class StreamBuilderApp extends StatefulWidget {
  const StreamBuilderApp({Key? key}) : super(key: key);

  @override
  State<StreamBuilderApp> createState() => _StreamBuilderAppState();
}

class _StreamBuilderAppState extends State<StreamBuilderApp> {
  Stream<int> streamdata = Stream.periodic(Duration(seconds: 1), (i) => i);

  int? streamvalue = 0;

  bool pause = true;

  var timervalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Builder Use'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: streamdata,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data != streamvalue) {
                print("Stream:- ${snapshot.data}");
                streamvalue = snapshot.data;
                if (!pause) {
                  timervalue++;
                }
              }
            }
            return Card(child: timerUI());
          },
        ),
      ),
    );
  }

  timerUI() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$timervalue',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        ButtonBar(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  pause = !pause;
                });
              },
              icon: Icon(pause ? Icons.play_arrow : Icons.pause),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  timervalue = 0;
                  pause = true;
                });
              },
              icon: Icon(Icons.restore),
            ),
          ],
        ),
      ],
    );
  }
}
