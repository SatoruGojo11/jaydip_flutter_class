import 'package:flutter/material.dart';

class ReorderedListApp extends StatefulWidget {
  const ReorderedListApp({Key? key}) : super(key: key);

  @override
  State<ReorderedListApp> createState() => _ReorderedListAppState();
}

class _ReorderedListAppState extends State<ReorderedListApp> {
  var ls = ['A', 'B', 'C', 'D', 'E', 'F'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Reordered List App'),
      ),
      body: ReorderableListView(
        children: [
          for (var item in ls)
            Card(
              key: ValueKey(item),
              elevation: 10,
              child: ListTile(
                title: Text(item),
                leading: Icon(Icons.menu),
              ),
            ),
        ],
        onReorder: (oldIndex, newIndex) {
          setState(
            () {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
              var data = ls.removeAt(oldIndex);
              ls.insert(newIndex, data);
            },
          );
        },
      ),
    );
  }
}
