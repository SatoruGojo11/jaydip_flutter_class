import 'package:flutter/material.dart';

class ChatPage_Tabbar extends StatefulWidget {
  const ChatPage_Tabbar({Key? key}) : super(key: key);

  @override
  State<ChatPage_Tabbar> createState() => _ChatPage_TabbarState();
}

class _ChatPage_TabbarState extends State<ChatPage_Tabbar> {
  var chats = [
    'Kaliyaa',
    'Chutki',
    'Dholu',
    'Raju',
    'Bheem',
    'Bholu',
  ];
  var subchats = [
    'Hello',
    'Hii😂',
    'Heee😃😃',
    'How r u?',
    'Whatsapp',
    'Instagram',
  ];
  var dps = [
    'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/789e0046ae98b9d70bdce49e6d2973c8d675ee5a680871eb188ecaf072a1460e._RI_V_TTW_SX720_FMjpg_.jpg',
    'https://qph.cf2.quoracdn.net/main-qimg-57175be1da968fbfdea245374a9e3396-lq',
    'https://www.greengold.tv/assets/Character/SuperBheem/Dholu.jpg',
    'https://www.greengold.tv/assets/Character/CB/Raju.jpg',
    'https://navbharattimes.indiatimes.com/photo/msid-75216026,imgsize-574248/pic.jpg',
    'https://www.greengold.tv/assets/Character/SuperBheem/Bholu.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text("${chats[index]}"),
                  subtitle: Text("${subchats[index]}"),
                  leading: Text("${dps[index]}"),
                ),
              ],
            );
          },
          itemCount: chats.length),
    );
  }
}
