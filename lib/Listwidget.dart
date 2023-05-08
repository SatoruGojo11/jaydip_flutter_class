import 'package:flutter/material.dart';

class ListApp extends StatefulWidget {
  const ListApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return ListUse();
  }
}

class ListUse extends State<ListApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List',
          style: TextStyle(
            fontSize: 25,
            color: Colors.redAccent,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Lion',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            subtitle: Text('King'),
            contentPadding: EdgeInsets.all(20.0),
            trailing: Icon(Icons.menu),
            leading: Image.network(
              "https://imgs.search.brave.com/9bJD25IogjKAVeZwhI_LgYHORoE0gQqL9J1YMmIEXwA/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5j/Z0Y4Mzd3THo3Y0I0/R05mYVpzekFRSGFG/aiZwaWQ9QXBp",
              height: 100,
              width: 100,
            ),
            splashColor: Colors.amberAccent,
            selected: true,
            selectedTileColor: Colors.greenAccent,
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Elephant',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            subtitle: Text('Moto Manas'),
            leading: Image.network(
              "https://imgs.search.brave.com/Z_qlDZgubGAhfJitz2gW9EnVN_juo3mp41Z2HIOJIRY/rs:fit:715:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5S/SFlVLWpRUnNHbVVO/VnJoMFExQVZBSGFF/NiZwaWQ9QXBp",
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
