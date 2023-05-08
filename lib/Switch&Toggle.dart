import 'package:flutter/material.dart';

class Switch_Toggle extends StatefulWidget {
  const Switch_Toggle({Key? key}) : super(key: key);

  @override
  State<Switch_Toggle> createState() => _Switch_ToggleState();
}

class _Switch_ToggleState extends State<Switch_Toggle> {
  bool S1 = false;
  var isSelect = [false, false, false];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Switch_Toggle',
          style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
        ),
      ),
      // Topic :- Switch
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Switch(
                value: S1,
                activeColor: Colors.red,
                activeTrackColor: Colors.black,
                // inactiveThumbColor: Colors.purpleAccent,
                // inactiveTrackColor: Colors.black45,
                // focusColor: Colors.lightGreen,
                // hoverColor: Colors.indigo,
                onChanged: (value) {
                  setState(() {
                    S1 = value;
                  });
                }),
          ),
          Text('This is $S1'),
          Center(
            child: ToggleButtons(
              children: [
                Icon(Icons.wifi),
                Icon(Icons.light_mode),
                Icon(Icons.dark_mode)
              ],
              isSelected: isSelect,
              onPressed: (int index) {
                setState(() {
                  isSelect[index] = !isSelect[index];
                });
              },
              color: Colors.black,
              selectedColor: Colors.red,
              fillColor: Colors.yellow,
              highlightColor: Colors.pink,
              splashColor: Colors.purpleAccent,
              renderBorder: true,
            ),
          ),
        ],
      ),
    );
  }
}
