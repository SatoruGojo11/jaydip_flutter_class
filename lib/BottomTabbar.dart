import 'package:flutter/material.dart';

class BottomTabbar extends StatefulWidget {
  const BottomTabbar({Key? key}) : super(key: key);

  @override
  State<BottomTabbar> createState() => _BottomTabbarState();
}

class _BottomTabbarState extends State<BottomTabbar> with SingleTickerProviderStateMixin {

  var tabs = [
    Tab(
      icon: Icon(Icons.location_pin),
      text: 'Location',
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
        backgroundColor: Colors.amber,
        title: Text('Bottom Tab Bar'),
      ),
      body: TabBarView(
        children: tabpages,
        controller: mycontroller,
      ),
      bottomNavigationBar: Material(
        color: Colors.deepOrange,
        child: TabBar(
          tabs: tabs,
          controller: mycontroller,
        ),
      ),
    );
  }
}
