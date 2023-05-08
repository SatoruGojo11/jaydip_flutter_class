import 'package:flutter/material.dart';

class Callpage_Tabbar extends StatefulWidget {
  const Callpage_Tabbar({Key? key}) : super(key: key);

  @override
  State<Callpage_Tabbar> createState() => _Callpage_TabbarState();
}

class _Callpage_TabbarState extends State<Callpage_Tabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_ic_call, color: Colors.white),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: Center(
        child: Text('Make a Call'),
      ),
    );
  }
}
