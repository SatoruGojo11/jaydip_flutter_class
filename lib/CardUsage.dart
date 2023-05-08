import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardUsage extends StatefulWidget {
  const CardUsage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CardApp();
  }
}

class CardApp extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Card',
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Elevated Button',
                  );
                },
                child: const Text(
                  'Elevated Button',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                // borderRadius: BorderRadius.circular(50),
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50))
                // borderRadius: BorderRadius.only(topLeft: Radius.elliptical(10, 50))
              ),
              child: Container(
                height: 200,
                child: InkWell(
                  splashColor: Colors.red,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
