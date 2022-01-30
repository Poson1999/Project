import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class DIY extends StatelessWidget {
  const DIY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: YoutubeAppDemo(),
      );
}

///
class YoutubeAppDemo extends StatefulWidget {
  @override
  _YoutubeAppDemoState createState() => _YoutubeAppDemoState();
}

class _YoutubeAppDemoState extends State<YoutubeAppDemo> {
  late YoutubePlayerController _controller;
  String url = '0UumdBiiboc';
  String name = '文創影片-溪口天赦竹編';

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: url,
      params: const YoutubePlayerParams(
        showControls: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
        // Passing controller to widgets below.
        controller: _controller,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('DIY'),
            ),
            body: LayoutBuilder(builder: (context, constraints) {
              if (kIsWeb && constraints.maxWidth > 800) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(child: player),
                    SizedBox(
                      width: 500,
                      child: SingleChildScrollView(
                        child: Controls(),
                      ),
                    ),
                  ],
                );
              }
              return ListView(children: const [
                player,
                Controls(),
              ]);
            })));
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

class Controls extends StatelessWidget {
  const Controls();

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(16),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
      ]));

  Widget get _space => const SizedBox(height: 10);
}
