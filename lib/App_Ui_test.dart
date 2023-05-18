import 'package:flutter/material.dart';

class App_Ui_test extends StatefulWidget {
  const App_Ui_test({Key? key}) : super(key: key);

  @override
  State<App_Ui_test> createState() => _App_Ui_testState();
}

class _App_Ui_testState extends State<App_Ui_test> {

  var key1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            title: Row(
              children: [
                Icon(Icons.local_activity)
                ,
                Text
                  (
                  'Flipkart',
                )
                ,
              ]
              ,
            )
            ,
          )
          ,
          SliverFillRemaining
            (
            child
                :
            SliverAppBar
              (
              title
                  :
              TextFormField
                (
                key
                    :
                key1
                ,
                decoration
                    :
                InputDecoration
                  (
                  hintText
                      :
                  "Search Bar",
                  labelText:
                  "
                  search for products
                  "
                  ,
                  border
                      :
                  OutlineInputBorder
                    (
                    borderRadius
                        :
                    BorderRadius
                        .
                    circular
                      (
                        10.0
                    )
                    ,
                  )
                  ,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
