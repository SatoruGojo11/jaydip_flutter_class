import 'package:flutter/material.dart';

class RichTextApp extends StatefulWidget {
  const RichTextApp({Key? key}) : super(key: key);

  @override
  State<RichTextApp> createState() => _RichTextAppState();
}

class _RichTextAppState extends State<RichTextApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Rich Text App'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hello',
            style: TextStyle(fontSize: 30, color: Colors.red),
            children: [
              TextSpan(
                text: 'World, ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purpleAccent,
                ),
              ),
              TextSpan(
                text: 'How are u...',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
