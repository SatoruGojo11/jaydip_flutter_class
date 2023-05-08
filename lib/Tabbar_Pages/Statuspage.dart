import 'package:flutter/material.dart';

class StatusPage_Tabbar extends StatefulWidget {
  const StatusPage_Tabbar({Key? key}) : super(key: key);

  @override
  State<StatusPage_Tabbar> createState() => _StatusPage_TabbarState();
}

class _StatusPage_TabbarState extends State<StatusPage_Tabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Status of Your Contacts'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            onPressed: () {},
            child: Icon(Icons.edit,color: Colors.white),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }
}
