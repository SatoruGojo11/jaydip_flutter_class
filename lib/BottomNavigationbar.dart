import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var _selectedIndex = 0;
  var itemsofapp = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      activeIcon: Icon(Icons.home_filled),
      backgroundColor: Colors.deepOrange,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
      activeIcon: Icon(
        Icons.search_sharp,
        size: 40,
      ),
      backgroundColor: Colors.deepOrange,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.ondemand_video_sharp),
      label: 'Reels',
      backgroundColor: Colors.deepOrange,
      activeIcon: Icon(
        Icons.slow_motion_video_outlined,
        size: 40,
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined),
      backgroundColor: Colors.deepOrange,
      label: 'Account',
      activeIcon: Icon(
        Icons.account_circle,
        size: 40,
      ),
    ),
  ];

  var mypages = [
    Center(
      child: Text('These is a Home Page'),
    ),
    Center(
      child: Text('These is a Search Page'),
    ),
    Center(
      child: Text('These is a Reels Page'),
    ),
    Center(
      child: Text('These is a Account Page'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bottom Tab Bar'),
      ),
      body: mypages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: itemsofapp,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        iconSize: 30,
        selectedItemColor: Colors.black87,
      ),
    );
  }
}
