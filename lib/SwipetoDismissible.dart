import 'package:flutter/material.dart';

class STDismissApp extends StatefulWidget {
  const STDismissApp({Key? key}) : super(key: key);

  @override
  State<STDismissApp> createState() => _STDismissAppState();
}

class _STDismissAppState extends State<STDismissApp> {
  var items = List.generate(50, (index) => 'User ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe to Dismiss App'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(items[index]),
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  items.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("User $index Archived."),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    ),
                  );
                }
                else if(direction == DismissDirection.endToStart)
                  {items.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("User $index Deleted."),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    ),
                  );
                  }
                },
              child: ListTile(
                title: Text('User $index'),
              ),
              background: Container(
                color: Colors.green,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.archive),
                    SizedBox(width: 10),
                    Text('Archive'),
                  ],
                ),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(width: 10),
                    Text('Delete'),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
