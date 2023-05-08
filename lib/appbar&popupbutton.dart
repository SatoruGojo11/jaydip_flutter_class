import 'package:flutter/material.dart';

class popupmenu_floating_button extends StatefulWidget {
  const popupmenu_floating_button({Key? key}) : super(key: key);

  @override
  State<popupmenu_floating_button> createState() =>
      _popupmenu_floating_buttonState();
}

class _popupmenu_floating_buttonState extends State<popupmenu_floating_button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Whatsapp'),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 15),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text('New Group'),
              ),
              PopupMenuItem(
                child: Text('New broadcast'),
              ),
              PopupMenuItem(
                child: Text('Linked devices'),
              ),
              PopupMenuItem(
                child: Text('Starred messages'),
              ),
              PopupMenuItem(
                child: Text('Payments'),
              ),
              PopupMenuItem(
                child: Text('Settings'),
              ),
            ];
          }),
        ],
      ),
      body: Center(
        child: Text(
          'Hello These is Bottom App Bar👇👇',
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          children: [
            SizedBox(width: 20),
            Text(
              'Whatsapp',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 250),
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            Icon(Icons.search, color: Colors.white),
            PopupMenuButton(
              color: Colors.white,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    child: Text('New broadcast'),
                  ),
                  PopupMenuItem(
                    child: Text('Linked devices'),
                  ),
                  PopupMenuItem(
                    child: Text('Starred messages'),
                  ),
                  PopupMenuItem(
                    child: Text('Payments'),
                  ),
                  PopupMenuItem(
                    child: Text('Settings'),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
