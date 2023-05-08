import 'package:flutter/material.dart';

class BottomApp extends StatefulWidget {
  const BottomApp({Key? key}) : super(key: key);

  @override
  State<BottomApp> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Sheet',
          style: TextStyle(
            fontSize: 30,
            color: Colors.amberAccent,
          ),
        ),
      ),
      body: Bottom(),
    );
  }
}

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Bottom();
  }
}

class _Bottom extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (context) => Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ),
          );
        },
        // child: Text("nsiuuvbr"),
        child: ListView(
          shrinkWrap: true,
          primary: false,
          children: [
            ListTile(
              title: Text('User 1'),
              leading: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text('User 2'),
              leading: Icon(Icons.account_circle),
            ),
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
