import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyButtonApp();
  }
}

class MyButtonApp extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Center(
          child: Text(
            'Button',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          ButtonBar(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Elevated Button',
                  style: TextStyle(
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text(
                  'Elevated Button',
                  style: TextStyle(
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
            ],
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Text Button',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              const TextButton(
                onPressed: null,
                child: Text(
                  'Text Button',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
          ButtonBar(
            children: [
              OutlinedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Outlined Button',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.TOP,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.redAccent,
                    textColor: Colors.yellowAccent,
                    fontSize: 16.0,
                  );
                },
                child: const Text(
                  'Outlined Button',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.wifi,
                  size: 30,
                ),
              ),
        ],
      ),
    );
  }
}
