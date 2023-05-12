import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  WebViewController? webcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    webcontroller = WebViewController()
      ..loadRequest(
        Uri.parse('https://www.codewithharry.com/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: webcontroller!,),
    );
  }
}
