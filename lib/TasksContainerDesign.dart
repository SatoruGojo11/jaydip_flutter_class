import 'package:flutter/material.dart';

class TaskContainerDesign extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Chess Board',
        style: TextStyle(
          color: Colors.yellowAccent
        ),
        ),
      ),
      body: SafeArea(
        child: Column(
              children: [
                Row(
                    children: [
                      design(Colors.black),
                      design(Colors.white),
                      design(Colors.black),
                      design(Colors.white),
                    ],
                  ),
                Row(
                    children: [
                      design(Colors.white),
                      design(Colors.black),
                      design(Colors.white),
                      design(Colors.black),
                    ],
                  ),
                Row(
                  children: [
                    design(Colors.black),
                    design(Colors.white),
                    design(Colors.black),
                    design(Colors.white),
                  ],
                ),
                Row(
                  children: [
                    design(Colors.white),
                    design(Colors.black),
                    design(Colors.white),
                    design(Colors.black),
                  ],
                ),
                Row(
                  children: [
                    design(Colors.black),
                    design(Colors.white),
                    design(Colors.black),
                    design(Colors.white),
                  ],
                ),
                Row(
                  children: [
                    design(Colors.white),
                    design(Colors.black),
                    design(Colors.white),
                    design(Colors.black),
                  ],
                ),
                Row(
                  children: [
                    design(Colors.black),
                    design(Colors.white),
                    design(Colors.black),
                    design(Colors.white),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      design(Colors.white),
                      design(Colors.black),
                      design(Colors.white),
                      design(Colors.black),
                    ],
                  ),
                ),
              ],
            ),
        ),
    );
  }

  design(Color a) {
    return Expanded(
      child: Container(
        height: 100,
        width: 100,
        color: a,
      ),
    );
  }
}
