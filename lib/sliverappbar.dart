import 'package:flutter/material.dart';

class SliverappbarApp extends StatefulWidget {
  const SliverappbarApp({Key? key}) : super(key: key);

  @override
  State<SliverappbarApp> createState() => _SliverappbarAppState();
}

class _SliverappbarAppState extends State<SliverappbarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            title: Text('Flexible Space Bar'),
            // centerTitle: true,
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                      'https://wallpapercave.com/dwp1x/wp5868254.jpg',
                      fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            fillOverscroll: true,
            child: ListView(
              children: [
                Image.network('https://images.unsplash.com/photo-1619045119136-349759036541?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHVycGxlJTIwYWVzdGhldGljfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                Stack(
                  children: [
                    Image.network(
                        'https://wallpapercave.com/dwp1x/wp6931121.jpg'),
                    Text(
                      'Sliver Fill Remaining',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
