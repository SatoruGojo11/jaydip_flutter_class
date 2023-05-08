import 'package:flutter/material.dart';

class HeroApp extends StatefulWidget {
  const HeroApp({Key? key}) : super(key: key);

  @override
  State<HeroApp> createState() => _HeroAppState();
}

class _HeroAppState extends State<HeroApp> {
  var dplist = [
    "assets/image/0.jpg",
    "assets/image/1.jpg",
    "assets/image/2.jpg",
    "assets/image/3.jpg",
    "assets/image/4.jpg",
    "assets/image/5.jpg",
    "assets/image/6.jpg",
    "assets/image/7.jpg",
    "assets/image/8.jpg",
    "assets/image/9.jpg",
    "assets/image/10.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Hero App'),
      // ),
      body: Center(
        child: ListView.builder(
          itemCount: dplist.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('User $index'),
              leading: GestureDetector(
                child: Hero(
                  tag: 'My Hero',
                  child: CircleAvatar(
                    backgroundImage: AssetImage(dplist[index]),
                  ),
                ),
                onTap: () => dppage(context, index),
              ),
            );
          },
        ),
      ),
    );
  }

  dppage(BuildContext context, index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          appBar: AppBar(
            title: Text('Dp Page'),
          ),
          body: Center(
            child: Hero(
              tag: "My Hero",
              child: Image.asset('${dplist[index]}'),
            ),
          ),
        ),
      ),
    );
  }
}
