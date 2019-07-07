import 'package:flutter/material.dart';
import'package:chewie/chewie.dart'; 
import'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key key}) : super(key: key);

  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network('http://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4');
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        aspectRatio: 3 / 2,
        autoPlay: true,
        looping: true,
    );
  }
  void dispose() {
      videoPlayerController.dispose();
      chewieController.dispose();
      super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('视频播放'),
         ),
         body: Center(
           child: Chewie(
             controller: chewieController,
           ),
         )
       ),
    );
  }
}