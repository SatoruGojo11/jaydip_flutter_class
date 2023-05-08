import 'package:flutter/material.dart';

class FuturebuilderApp extends StatefulWidget {
  const FuturebuilderApp({Key? key}) : super(key: key);

  @override
  State<FuturebuilderApp> createState() => _FuturebuilderAppState();
}

class _FuturebuilderAppState extends State<FuturebuilderApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future App Bar'),
      ),
      body: Center(
        child: FutureBuilder(
          future: storeddata(),
          builder: (context, snap) {
            if (snap.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snap.data.toString()),
                  Image.network(
                      'https://media.tenor.com/drnTkrpv-tUAAAAC/ahhh-meme.gif',
                      fit: BoxFit.fill),
                  Image.network(
                      'https://media.tenor.com/taQ5u_qXeIEAAAAM/maza-abhi.gif'),
                  Icon(
                    Icons.check_circle_outline,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Wait for 5 seconds and then you will see magic'),
                  SizedBox(height: 20),
                  CircularProgressIndicator(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  storeddata() async {
    await Future.delayed(Duration(seconds: 10));
    return 'Free me MeMes Dekh lo guys...';
  }
}
