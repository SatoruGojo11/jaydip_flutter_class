import 'package:flutter/material.dart';

class TFFAp extends StatefulWidget {
  const TFFAp({Key? key}) : super(key: key);

  @override
  State<TFFAp> createState() => _TFFApState();
}

class _TFFApState extends State<TFFAp> {
  var key1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Registration Form',
          style: TextStyle(
            fontSize: 30,
            color: Colors.amberAccent,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.account_circle,
              size: 150,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: showtff('User name', 'User Name', 'Enter Your Username'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }

  showtff(main, hint, label) {
    var ttf = TextFormField(
        key: key1,
        decoration: InputDecoration(
          hintText: "$hint",
          labelText: "$label",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "$main can't be Empty";
          } else {
            return null;
          }
        });
    return ttf;
  }
}
