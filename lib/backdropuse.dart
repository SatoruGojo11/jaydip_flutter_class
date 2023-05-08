import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class BackdropApp extends StatefulWidget {
  const BackdropApp({Key? key}) : super(key: key);

  @override
  State<BackdropApp> createState() => _BackdropAppState();
}

class _BackdropAppState extends State<BackdropApp> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: Text('Backdrop Appbar'),
      ),
        backLayer: Center(
          child: Text('Back layer'),
        ),
        frontLayer: Center(
          child: Text('Front Layer'),
        ));
  }
}
