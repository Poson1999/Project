import 'package:all/pages/category/text.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class RC5 extends StatelessWidget {
  const RC5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(rc),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child:SelectableText(rc6, style: subStyle, textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:TextButton(
                    onPressed: (){},
                    child: Image.asset("assets/images/category/resource/rc4.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child:SelectableText(rc_2, style: subStyle, textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: YoutubePlayerControllerProvider(
                    controller: YoutubePlayerController(
                        initialVideoId: rc5Linkid1,
                        params: const YoutubePlayerParams(
                            showControls: true
                        )
                    ),
                    child: const YoutubePlayerIFrame(),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child:SelectableText(rc_4, style: subStyle, textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: YoutubePlayerControllerProvider(
                    controller: YoutubePlayerController(
                        initialVideoId: rc5Linkid2,
                        params: const YoutubePlayerParams(
                            showControls: true
                        )
                    ),
                    child: const YoutubePlayerIFrame(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: YoutubePlayerControllerProvider(
                    controller: YoutubePlayerController(
                        initialVideoId: rc5Linkid3,
                        params: const YoutubePlayerParams(
                            showControls: true
                        )
                    ),
                    child: const YoutubePlayerIFrame(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: YoutubePlayerControllerProvider(
                    controller: YoutubePlayerController(
                        initialVideoId: rc5Linkid4,
                        params: const YoutubePlayerParams(
                            showControls: true
                        )
                    ),
                    child: const YoutubePlayerIFrame(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: YoutubePlayerControllerProvider(
                    controller: YoutubePlayerController(
                        initialVideoId: rc5Linkid5,
                        params: const YoutubePlayerParams(
                            showControls: true
                        )
                    ),
                    child: const YoutubePlayerIFrame(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: YoutubePlayerControllerProvider(
                    controller: YoutubePlayerController(
                        initialVideoId: rc5Linkid6,
                        params: const YoutubePlayerParams(
                            showControls: true
                        )
                    ),
                    child: const YoutubePlayerIFrame(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: YoutubePlayerControllerProvider(
                    controller: YoutubePlayerController(
                        initialVideoId: rc5Linkid7,
                        params: const YoutubePlayerParams(
                            showControls: true
                        )
                    ),
                    child: const YoutubePlayerIFrame(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: YoutubePlayerControllerProvider(
                    controller: YoutubePlayerController(
                        initialVideoId: rc5Linkid8,
                        params: const YoutubePlayerParams(
                            showControls: true
                        )
                    ),
                    child: const YoutubePlayerIFrame(),
                  ),
                ),
              ]
          ),
        )
    );
  }
}