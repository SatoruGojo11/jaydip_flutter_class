import 'package:flutter/material.dart';
import 'package:jaydip_flutter/Navigate%20&%20Pass%20Data/Second_Screen.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  var namekey = GlobalKey<FormState>();
  var idkey = GlobalKey<FormState>();
  var agekey = GlobalKey<FormState>();
  var pdnamekey = GlobalKey<FormState>();
  var id, name, age, productname;

  var v1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login Screen',
          style: TextStyle(fontSize: 20, color: Colors.deepOrange),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showdata(idkey, id, "Id", "Enter Your Id"),
            showdata(namekey, name, "Username", "Enter Your Username"),
            showdata(agekey, age, "Age", "Enter Your Age"),
            showdata(pdnamekey, productname, "Product Name", "Enter Your Product name"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Home_Screen(
                          user_name: nextpg(id),
                        ),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  showdata(keys, v1, label, hint) {
    var data = Padding(
        padding: EdgeInsets.only(top: 10),
        child: TextFormField(
          key: keys,
          onChanged: (value) {
            v1 = value;
          },
          cursorColor: Colors.red,
          decoration: InputDecoration(
            labelText: '$label',
            hintText: '$hint',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              Text("$label Can't be Empty");
            } else {
              return null;
            }
          },
        ),
    );
    return data;
  }

  nextpg(value) {
    value = v1;
  }
}
