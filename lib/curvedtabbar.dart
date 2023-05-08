import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CurvedNavbar extends StatefulWidget {
  const CurvedNavbar({Key? key}) : super(key: key);

  @override
  State<CurvedNavbar> createState() => _CurvedNavbarState();
}

class _CurvedNavbarState extends State<CurvedNavbar>
    with SingleTickerProviderStateMixin {
  var tabs = [
    Tab(
      icon: Icon(Icons.location_pin),
    ),
    Tab(
      icon: Icon(Icons.chat_bubble_outline),
    ),
    Tab(
      icon: Icon(Icons.search_off),
    ),
    Tab(
      icon: Icon(Icons.people_alt),
    ),
    Tab(
      icon: Icon(Icons.play_arrow_outlined),
    ),
  ];
  var tabpages = [
    Center(
      child: Text('These is a Location Page'),
    ),
    Center(
      child: Text('These is a Chat Page'),
    ),
    Center(
      child: Text('These is a Lens Page'),
    ),
    Center(
      child: Text('These is a Community Page'),
    ),
    Center(
      child: Text('These is a Player'
          ' Page'),
    ),
  ];

  TabController? mycontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mycontroller = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curved Tab bar'),
      ),
      body: TabBarView(
        children: tabpages,
        controller: mycontroller,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: tabs,
        color: Colors.yellow,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.red,
      ),
    );
  }
}
