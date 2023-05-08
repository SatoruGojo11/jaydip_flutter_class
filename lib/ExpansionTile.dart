import 'package:flutter/material.dart';

class ExpansionTileApp extends StatefulWidget {
  const ExpansionTileApp({Key? key}) : super(key: key);

  @override
  State<ExpansionTileApp> createState() => _ExpansionTileAppState();
}

class _ExpansionTileAppState extends State<ExpansionTileApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile App'),
      ),
      body: Column(
        children: [
          ExpansionTile(title: Text('Super Heroes'),leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSpwkV_hgvcmIr470II2_31UpiX5CmCe4rlA&usqp=CAU'),),
          children: [
            ListTile(
              title: Text('Iron Man'),
              leading: CircleAvatar(backgroundImage: NetworkImage('https://bgr.com/wp-content/uploads/2019/11/avengers-endgame-iron-man-gauntlet.jpg?quality=82&strip=all&resize=1400,1400')),
            ),
            ListTile(
              title: Text('Black Panther'),
              leading: CircleAvatar(backgroundImage: NetworkImage('https://cdn.vox-cdn.com/thumbor/IDuU1a0FYBrTb_X0tt5gCyTeALU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/10164247/BlackPanther596d2f04d1540_2040.jpg')),
            ),
            ListTile(
              title: Text('Thor'),
              leading: CircleAvatar(backgroundImage: NetworkImage('https://cdn.marvel.com/content/1x/004tho_ons_mas_mob_04.jpg')),
            ),
            ExpansionTile(title: Text('Villans'),leading: CircleAvatar(backgroundImage: NetworkImage('https://fantasytopics.com/wp-content/uploads/2022/06/Marvel-Villains-735x459.jpeg.webp'),),
            children: [
              ListTile(
                title: Text('Dr. Doom'),
                leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1s8JR-3H8Hp1UAD6p4-es_3SsyWah_X82-G637gEOsXdkbBR8AR60L0DKJ3GhxRuSo64&usqp=CAU'),),
              ),
              ListTile(
                title: Text('Altron'),
                leading: CircleAvatar(backgroundImage: NetworkImage('https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/ultron-jackson-milano.jpg'),),
              ),
            ],),
            ExpansionTile(title: Text('Ancient Heroes'),leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDoV6fOOTXaOYSxJSiHZBYcI08yqUZX5lkzA&usqp=CAU'),),
            children: [
              ListTile(
                title: Text('Ikaris'),
                leading: CircleAvatar(backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fdisney.fandom.com%2Fwiki%2FIkaris&psig=AOvVaw2h5-lo1k6wMAS7Yg4eZuso&ust=1681308128537000&source=images&cd=vfe&ved=0CA4QjRxqFwoTCODHxoH_of4CFQAAAAAdAAAAABAD'),),
              ),
              ListTile(
                title: Text('Makkari'),
                leading: CircleAvatar(backgroundImage: NetworkImage('https://pbs.twimg.com/media/FDxe47cVUAIF7gR?format=jpg&name=900x900'),),
              ),
              ListTile(
                title: Text('Gilgamesh'),
                leading: CircleAvatar(backgroundImage: NetworkImage('https://cdn.flickeringmyth.com/wp-content/uploads/2022/03/gilgamesh_marvel_gallery_623145b84ac5c-1.jpg'),),
              ),
              ListTile(
                title: Text('Ajak'),
                leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSavbM1bRuaZEr-APJi2QvjwIrzF6Lh59oCQg&usqp=CAU'),),
              ),
            ],),
          ],),
          
        ],
      ),
    );
  }
}
