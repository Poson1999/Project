import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'diy_url_title.dart';

class DIY extends StatelessWidget {
  const DIY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text(home9),
      ),
      body: const VideoPlayer());
}

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final List<YoutubePlayerController> _controllerList = [];

  fillYTList() {
    for (int i = 0; i < count; i++) {
      YoutubePlayerController _controller = YoutubePlayerController(
          initialVideoId: videos[i].url,
          params: const YoutubePlayerParams(showControls: true));
      _controllerList.add(_controller);
    }
  }

  @override
  void initState() {
    super.initState();
    fillYTList();
  }

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: count,
      shrinkWrap: true,
      itemBuilder: (context, index) => Column(children: <Widget>[
            SizedBox(
                width: double.infinity,
                child: YoutubePlayerIFrame(controller: _controllerList[index])),
            Text(videos[index].name)
          ]));
}
