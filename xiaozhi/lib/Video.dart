import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VidoPage extends StatefulWidget {
  VidoPage({Key key}) : super(key: key);

  _VidoPageState createState() => _VidoPageState();
}

class _VidoPageState extends State<VidoPage> {
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;
  @override
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
    return Scaffold(
      appBar: AppBar(
        title:Text('视频播放')
      ),
      body: Container(
        child: Chewie(
          controller: chewieController,
        ),
      ),
    );
  }
}

