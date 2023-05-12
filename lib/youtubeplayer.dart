import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerApp extends StatefulWidget {
  const YoutubePlayerApp({Key? key}) : super(key: key);

  @override
  State<YoutubePlayerApp> createState() => _YoutubePlayerAppState();
}

class _YoutubePlayerAppState extends State<YoutubePlayerApp> {
  
  VideoPlayerController? ytcontroller;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ytcontroller = YoutubePlayerController(initialVideoId: 'https://youtu.be/acN41dTaWek') as VideoPlayerController?;
  }
  
  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(player: YoutubePlayer(controller: ), builder: builder)
}
