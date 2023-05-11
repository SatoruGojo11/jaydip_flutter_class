import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerApp extends StatefulWidget {
  const VideoPlayerApp({Key? key}) : super(key: key);

  @override
  State<VideoPlayerApp> createState() => _VideoPlayerAppState();
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {
  VideoPlayerController? vdcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    vdcontroller = VideoPlayerController.network('https://cdn.pixabay.com/vimeo/337972830/Fall%20-%2023881.mp4?width=1280&hash=4b07eb0b4129b81d19e08a4fab77602fae1a7278')
      ..initialize().then((value) => () {
            setState(() {});
          })
      ..setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Video Player App',
          style: TextStyle(fontSize: 30, color: Colors.deepOrange),
        ),
      ),
      body: Center(
        child: vdcontroller!.value.isInitialized
            ? VideoplayerUI()
            : CircularProgressIndicator(),
        // child: VideoplayerUI(),
      ),
    );
  }

  VideoplayerUI() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: vdcontroller!.value.aspectRatio,
            child: VideoPlayer(vdcontroller!),
          ),
          Text(
              '${vdcontroller!.value.position} / ${vdcontroller!.value.duration}'),
          VideoProgressIndicator(vdcontroller!, allowScrubbing: true),
          ElevatedButton.icon(
            onPressed: () {},
            icon: vdcontroller!.value.isPlaying
                ? Icon(Icons.pause)
                : Icon(Icons.play_arrow),
            label: Text(vdcontroller!.value.isPlaying ? 'Play' : 'Pause'),
          ),
        ],
      ),
    );
  }
}
