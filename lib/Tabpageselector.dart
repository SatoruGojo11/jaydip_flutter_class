import 'package:flutter/material.dart';

class TabpageselectApp extends StatefulWidget {
  const TabpageselectApp({Key? key}) : super(key: key);

  @override
  State<TabpageselectApp> createState() => _TabpageselectAppState();
}

class _TabpageselectAppState extends State<TabpageselectApp> {
  var icon = [
    Icon(Icons.home_outlined),
    Icon(Icons.search_sharp),
    Icon(Icons.settings),
    Icon(Icons.slow_motion_video),
    Icon(Icons.account_circle_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text('Tab Page Selector'),
      ),
      body: DefaultTabController(
        length: icon.length,
        child: Builder(
          builder: (context) => Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Center(
                  child: TabPageSelector(),
                ),
                Expanded(
                  child: IconTheme(
                    data: IconThemeData(size: 150, color: Colors.purple),
                    child: TabBarView(
                      children: icon,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        TabController? controller =
                        DefaultTabController.of(context);
                        if (!controller!.indexIsChanging) {
                          controller.animateTo(icon.length - 1);
                        }
                      },
                      child: Text('SKIP'),
                    ),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    //   onPressed: () {
                    //     TabController? controller =
                    //     DefaultTabController.of(context);
                    //     if (!controller!.indexIsChanging) {
                    //       controller.animateTo();
                    //     }
                    //   },
                    //   child: Text('NEXT'),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
