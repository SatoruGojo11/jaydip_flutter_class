import 'package:flutter/material.dart';

class SnkBar extends StatefulWidget {
  const SnkBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return SnkUse();
  }
}

class SnkUse extends State<SnkBar> {
  // var ls = List.generate(25, (index) => 'User $index');
  var ls1 = List.generate(10, (index) => 'User $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SnackBar',
          style: TextStyle(
            fontSize: 20,
            color: Colors.redAccent,
          ),
        ),
      ),
      /* ***************** Method 1 *****************
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showsnk(context);
          },
          child: Text('Snk Bar'),
        ),
      ),
      */
      /* ***********  Method 2 ***************
      body: ListView.builder(
        itemCount: ls.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(ls[index]),
            onTap: () {
              showsnk(context, ls[index]);
            },
          );
        },
      ),
       */

      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('User $index'),
            subtitle: Text('Hello $index'),
            onTap: () {
              showsnk1(context,ls1[index]);
            },
          );
        },
        itemCount: ls1.length,
      ),
    );
  }

  showsnk1(ctx,index) {
    var snk1 = SnackBar(
      content: Text(index),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: (){},
      ),
    );
    ScaffoldMessenger.of(ctx).showSnackBar(snk1);
  }

// showsnk(ctx, data) {
//   var snk = SnackBar(
//     content: Text(data),
//     action: SnackBarAction(
//       label: 'Undo',
//       onPressed: () {},
//     ),
//   );
//   ScaffoldMessenger.of(ctx).showSnackBar(snk);
// }
}
