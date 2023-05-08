import 'package:flutter/material.dart';

import 'HeroApp.dart';

class OpacityUseApp extends StatefulWidget {
  const OpacityUseApp({Key? key}) : super(key: key);

  @override
  State<OpacityUseApp> createState() => _OpacityUseAppState();
}

class _OpacityUseAppState extends State<OpacityUseApp> {
  var _opacity1 = 1.0;

  // var _opacity2 = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Center(
        child: Stack(
          children: [
            // GestureDetector(
            //   child: Opacity(
            //     opacity: _opacity1,
            //     child: Image.network(
            //         'https://images.unsplash.com/photo-1620670758435-3f4eb7bb0572?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlJTIwYWVzdGhldGljfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
            //   ),
            //   onTap: () {
            //     setState(() {
            //       _opacity1 = 1.0 - _opacity1;
            //     });
            //   },
            // ),
            // GestureDetector(
            //   child: AnimatedOpacity(
            //     opacity: _opacity2,
            //     duration: Duration(seconds: 5),
            //     child: Center(
            //       child: Expanded(
            //         child: Image(
            //           image: NetworkImage(
            //               'https://images.unsplash.com/photo-1632406201083-40b1cebd367a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80'),
            //         ),
            //       ),
            //     ),
            //   ),
            //   onTap: () {
            //     setState(() {
            //       _opacity2 = 1.0 - _opacity2;
            //     });
            //   },
            // ),
            GestureDetector(
              child: AnimatedOpacity(
                opacity: _opacity1,
                duration: Duration(seconds: 5),
                child: Center(
                  child: Expanded(
                    child: HeroApp(),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  _opacity1 = 1.0 - _opacity1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
