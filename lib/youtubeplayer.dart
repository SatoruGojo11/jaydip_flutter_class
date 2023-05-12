import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerApp extends StatefulWidget {
  const YoutubePlayerApp({Key? key}) : super(key: key);

  @override
  State<YoutubePlayerApp> createState() => _YoutubePlayerAppState();
}

class _YoutubePlayerAppState extends State<YoutubePlayerApp> {
  YoutubePlayerController? ytcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ytcontroller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(
            'https://www.youtube.com/watch?v=35npVaFGHMY')!,
        flags: YoutubePlayerFlags(
            mute: false,
            loop: false,
            autoPlay: true,
            showLiveFullscreenButton: true))
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(controller: ytcontroller!),
        builder: (context, player) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Youtube',
              style: TextStyle(fontSize: 30, color: Colors.deepOrange),
            ),
          ),
          body: ListView(
            children: [
              player,
              SizedBox(height: 10),
              ElevatedButton.icon(
                  onPressed: () {
                    ytcontroller!.load(YoutubePlayer.convertUrlToId(
                        'https://www.youtube.com/watch?v=7bOptq-NPJQ&ab_channel=NatureRelaxationFilms')!);
                  },
                  icon: Icon(Icons.skip_next),
                  label: Text('Next Video')),
              SizedBox(height: 10),
              ElevatedButton.icon(
                  onPressed: () {
                    if (ytcontroller!.value.isPlaying) {
                      ytcontroller!.pause();
                    } else {
                      ytcontroller!.play();
                    }
                  },
                  icon: ytcontroller!.value.isPlaying
                      ? Icon(Icons.play_arrow)
                      : Icon(Icons.pause),
                  label: Text(ytcontroller!.value.isPlaying ? 'Play' : 'Pause')),
              SizedBox(height: 10),
              Text(ytcontroller!.metadata.title),
              SizedBox(height: 10),
              Text(ytcontroller!.metadata.author),
              SizedBox(height: 10),
              Text('${ytcontroller!.metadata.duration.inSeconds}..seconds'),
              SizedBox(height: 10),
              ElevatedButton(onPressed: (){
                ytcontroller!.mute();
                ytcontroller!.unMute();
                ytcontroller!.seekTo(Duration(seconds: 10),);
              }, child: Text('New')),
            ],
          ),
        ),
      );
}
