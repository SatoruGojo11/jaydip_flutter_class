import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:extended_image_library/extended_image_library.dart';

class ExtendedImageApp extends StatefulWidget {
  const ExtendedImageApp({Key? key}) : super(key: key);

  @override
  State<ExtendedImageApp> createState() => _ExtendedImageAppState();
}

class _ExtendedImageAppState extends State<ExtendedImageApp> {
  var _imagekey = GlobalKey<ExtendedImageEditorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Extended Image App',
          style: TextStyle(fontSize: 30, color: Colors.deepOrange),
        ),
      ),
      body: ExtendedImage.network(
        'https://staticg.sportskeeda.com/editor/2021/09/1b7b8-16322338309554-800.jpg',
        fit: BoxFit.contain,
        extendedImageEditorKey: _imagekey,
        mode: ExtendedImageMode.editor,
        initEditorConfigHandler: (state) {
          return EditorConfig(
            maxScale: 8.0,
            hitTestSize: 20.0,
            cropRectPadding: EdgeInsets.all(10.0),
          );
        },
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ButtonBar(
          children: [
            ElevatedButton.icon(
                onPressed: () => _imagekey.currentState!.rotate(right: false),
                icon: Icon(Icons.rotate_left),
                label: Text('Rotate Left')),
            ElevatedButton.icon(
                onPressed: () => _imagekey.currentState!.rotate(right: true),
                icon: Icon(Icons.rotate_right),
                label: Text('Rotate Right')),
            ElevatedButton.icon(
                onPressed: () => _imagekey.currentState!.reset(),
                icon: Icon(Icons.restore),
                label: Text('Reset Image')),
            ElevatedButton.icon(
                onPressed: () => Image.asset(''),
                icon: Icon(Icons.restore),
                label: Text('Save Image')),
          ],
        ),
      ),
    );
  }
}
