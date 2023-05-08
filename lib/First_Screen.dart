import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFoodApp extends StatefulWidget {
  const MainFoodApp({Key? key}) : super(key: key);

  @override
  State<MainFoodApp> createState() => _MainFoodAppState();
}

class _MainFoodAppState extends State<MainFoodApp> {
  var name = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVBR9fI3kfmWNcAP4QnodG6dhTPcfimt1S6xoIPo9exfqKRdW5PmQo4QIUPSxaV21CwTY&usqp=CAU',
            fit: BoxFit.fill,
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Welcome,',
                    style: GoogleFonts.aladin(
                      textStyle: TextStyle(
                        fontSize: 60,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              TextFormField(
                key: name,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  prefixIcon: Icon(Icons.account_circle_outlined),
                  prefixIconColor: Colors.black,
                  labelText: "Your Name",
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  hoverColor: Colors.lightGreenAccent,
                  enabled: true,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "User name can't be Empty";
                  } else {
                    return null;
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
