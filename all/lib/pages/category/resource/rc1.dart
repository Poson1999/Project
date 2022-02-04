import 'package:all/pages/category/text.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class RC1 extends StatelessWidget {
  const RC1({Key? key}) : super(key: key);

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
                child:SelectableText(rc2, style: subStyle, textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child:TextButton(
                  onPressed: (){},
                  child: Image.asset("assets/images/category/resource/rc.png"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(rc_1, style: subStyle, textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: YoutubePlayerControllerProvider(
                  controller: YoutubePlayerController(
                    initialVideoId: rc1Linkid1,
                    params: const YoutubePlayerParams(
                      showControls: true
                    )
                  ),
                  child: const YoutubePlayerIFrame(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(rc_2, style: textStyle, textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: YoutubePlayerControllerProvider(
                  controller: YoutubePlayerController(
                      initialVideoId: rc1Linkid2,
                      params: const YoutubePlayerParams(
                          showControls: true
                      )
                  ),
                  child: const YoutubePlayerIFrame(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(rc_3, style: textStyle, textAlign: TextAlign.center),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(rc_4, style: subStyle, textAlign: TextAlign.center),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(rcF1, style: textStyle, textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: YoutubePlayerControllerProvider(
                  controller: YoutubePlayerController(
                      initialVideoId: rc1Linkid3,
                      params: const YoutubePlayerParams(
                          showControls: true
                      )
                  ),
                  child: const YoutubePlayerIFrame(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(rcF2, style: textStyle, textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: YoutubePlayerControllerProvider(
                  controller: YoutubePlayerController(
                      initialVideoId: rc1Linkid4,
                      params: const YoutubePlayerParams(
                          showControls: true
                      )
                  ),
                  child: const YoutubePlayerIFrame(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(rcF3, style: textStyle, textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: YoutubePlayerControllerProvider(
                  controller: YoutubePlayerController(
                      initialVideoId: rc1Linkid5,
                      params: const YoutubePlayerParams(
                          showControls: true
                      )
                  ),
                  child: const YoutubePlayerIFrame(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(rcF4, style: textStyle, textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: YoutubePlayerControllerProvider(
                  controller: YoutubePlayerController(
                      initialVideoId: rc1Linkid6,
                      params: const YoutubePlayerParams(
                          showControls: true
                      )
                  ),
                  child: const YoutubePlayerIFrame(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(rcF5, style: textStyle, textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: YoutubePlayerControllerProvider(
                  controller: YoutubePlayerController(
                      initialVideoId: rc1Linkid7,
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