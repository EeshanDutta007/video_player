import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class Videoplayer extends StatefulWidget {
  @override
  _VideoplayerState createState() => _VideoplayerState();
}

VideoPlayerController videoPlayerController;
ChewieController chewieController;

class _VideoplayerState extends State<Videoplayer> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlayVideo()));
            },
            child: Text('Play Video'),
          ),
        )),
      ),
    );
  }
}

class PlayVideo extends StatefulWidget {
  @override
  _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/firestore-test-ad2fa.appspot.com/o/Call%20of%20Duty%20%20Modern%20Warfare%202019%202020.10.10%20-%2023.44.48.03.DVR_Trim.mp4?alt=media&token=6a0d5a13-0cc4-42e2-be8a-0d6c55c03811');
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        overlay: Text('Title of the video'),
        aspectRatio: 16 / 9,
        autoPlay: true);
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              height: 300, child: Chewie(controller: chewieController))),
    );
  }
}
