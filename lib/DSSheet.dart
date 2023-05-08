import 'package:flutter/material.dart';

class DSSheetApp extends StatefulWidget {
  const DSSheetApp({Key? key}) : super(key: key);

  @override
  State<DSSheetApp> createState() => _DSSheetAppState();
}

class _DSSheetAppState extends State<DSSheetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'DSSheet',
          style: TextStyle(
            fontSize: 30,
            color: Colors.amber,
          ),
        ),
      ),
      body: DS(),
    );
  }
}

class DS extends StatefulWidget {
  const DS({Key? key}) : super(key: key);

  @override
  State<DS> createState() => _DSState();
}

class _DSState extends State<DS> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          'https://images.unsplash.com/photo-1573525526563-5f8a2375f2b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8OSUzQTE2fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
          fit: BoxFit.cover,
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.2,
          minChildSize: 0.2,
          maxChildSize: 0.8,
          builder: (context, scrollControler) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Scrollbar(
                child: ListView.builder(
                  controller: scrollControler,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        "User $index",
                        style: TextStyle(color: Colors.amber[400]),
                      ),
                      leading: Icon(
                        Icons.account_circle,
                        color: Colors.amber[400],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
