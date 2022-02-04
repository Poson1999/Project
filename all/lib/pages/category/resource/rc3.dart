import 'package:all/pages/category/text.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class RC3 extends StatelessWidget {
  const RC3({Key? key}) : super(key: key);

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
                  child:SelectableText(rc4, style: subStyle, textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:TextButton(
                    onPressed: (){},
                    child: Image.asset("assets/images/category/resource/rc2.png"),
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
                        initialVideoId: rc3Linkid1,
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
                        initialVideoId: rc3Linkid2,
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
                        initialVideoId: rc3Linkid3,
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
                        initialVideoId: rc3Linkid4,
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
                        initialVideoId: rc3Linkid5,
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
                        initialVideoId: rc3Linkid6,
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