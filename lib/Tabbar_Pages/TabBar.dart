import 'package:flutter/material.dart';
import 'package:jaydip_flutter/Tabbar_Pages/Callpage.dart';
import 'package:jaydip_flutter/Tabbar_Pages/Chatpage.dart';
import 'package:jaydip_flutter/Tabbar_Pages/Statuspage.dart';

class TabBarApp extends StatefulWidget {
  const TabBarApp({Key? key}) : super(key: key);

  @override
  State<TabBarApp> createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp> {
  var tabitem = [
    Tab(icon: Icon(Icons.chat), text: 'Chats'),
    Tab(icon: Icon(Icons.videocam), text: 'Status'),
    Tab(icon: Icon(Icons.call), text: 'Calls'),
  ];

  var tabpages = [
    ChatPage_Tabbar(),
    StatusPage_Tabbar(),
    Callpage_Tabbar(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabitem.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Whatsapp'),
          bottom: TabBar(tabs: tabitem),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 15),
            Icon(Icons.search),
            SizedBox(width: 7),
            PopupMenuButton(
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
        body: TabBarView(children: tabpages),
      ),
    );
  }
}
