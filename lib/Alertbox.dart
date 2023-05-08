import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert App',
          style: TextStyle(
            fontSize: 30,
            color: Colors.yellowAccent,
          ),
        ),
      ),
      body: Center(
        child: AlertDialog(
          title: Text("Delete...."),
          content: Text("Are you Sure.??"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
          ],
        ),
      ),
    );
  }
}
