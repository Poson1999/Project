import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'diy_url_title.dart';

class DIYFilter extends StatefulWidget {
  const DIYFilter({Key? key}) : super(key: key);

  @override
  DIYFilterState createState() => DIYFilterState();
}

class DIYFilterState extends State<DIYFilter> {
  List<YoutubePlayerController> filteredControllers = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < filtered.length; i++) {
      YoutubePlayerController controller = YoutubePlayerController(
          initialVideoId: filtered[i].url, params: const YoutubePlayerParams());
      filteredControllers.add(controller);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text(filterTitle), centerTitle: true),
      body: Scrollbar(
          child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: [
                          Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: YoutubePlayerIFrame(
                                      controller: filteredControllers[index])))
                        ]),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 5, left: 10),
                            child: Text(filtered[index].title))
                      ]))));
}
