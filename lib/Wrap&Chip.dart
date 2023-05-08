import 'package:flutter/material.dart';

class WrapChipApp extends StatefulWidget {
  const WrapChipApp({Key? key}) : super(key: key);

  @override
  State<WrapChipApp> createState() => _WrapChipAppState();
}

class _WrapChipAppState extends State<WrapChipApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wrap & Chip App',
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
        ),
      ),
      body: Wrap(
        spacing: 20,
        children: [
        // children: [
        //   // Chip(
        //   //   label: Text(
        //   //     'Iron Man',
        //   //   ),
        //   //   avatar: CircleAvatar(
        //   //     child: Text('I'),
        //   //   ),
        //   // ),
        //   // Chip(
        //   //   label: Text(
        //   //     'Black Panther',
        //   //   ),
        //   //   avatar: CircleAvatar(
        //   //     child: Text('B'),
        //   //   ),
        //   // ),
        //   // Chip(
        //   //   label: Text(
        //   //     'Captain America',
        //   //   ),
        //   //   avatar: CircleAvatar(
        //   //     child: Text('C'),
        //   //   ),
        //   // ),
          'Iron Man',
          'Thor',
          'Dr. Strange',
          'Black Widow',
          'Captain Amercia',
          'Hulk'
        ]
            .map(
              (e) => Chip(
                label: Text(e),
                avatar: CircleAvatar(
                  child: Text(e),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
