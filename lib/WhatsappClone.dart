import 'package:flutter/material.dart';

class WspClone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Wspapp();
  }
}

class Wspapp extends State<WspClone> {
  // var list = List.generate(30, (index) => 'User 1');
  var ls = [
    'assets/image/0.jpg',
    'assets/image/1.jpg',
    'assets/image/2.jpg',
    'assets/image/3.jpg',
    'assets/image/4.jpg',
    'assets/image/5.jpg',
    'assets/image/6.jpg',
    'assets/image/7.jpg',
    'assets/image/8.jpg',
    'assets/image/9.jpg',
    'assets/image/10.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1000, 7, 94, 84),
        title: Row(
          children: [
            Text(
              'Whatsapp',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_enhance),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: ls.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'User $index',
              style: TextStyle(
                fontSize: 25,
                color: Colors.redAccent,
              ),
            ),
            subtitle: Text('I am $index'),
            leading: CircleAvatar(
              backgroundImage: AssetImage(ls[index]),
            ),
          );
        },
      ),
    );
  }
}
