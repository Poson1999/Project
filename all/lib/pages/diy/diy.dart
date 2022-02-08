import 'package:all/pages/category/text.dart';
import 'package:all/pages/constant.dart';
import 'package:all/pages/diy/video.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'diy_url_title.dart';

class DIY extends StatefulWidget {
  const DIY({Key? key}) : super(key: key);

  @override
  DIYState createState() => DIYState();
}

class DIYState extends State<DIY> {
  List<YoutubePlayerController> shownController = [];
  List<YoutubePlayerController> filteredControllers = [];
  List<Video> shownVideos = videos;
  List<Video> filteredVideos = [];
  late _MySearchDelegate _delegate;

  void fillYTList() {
    for (int i = 0; i < videos.length; i++) {
      YoutubePlayerController _controller = YoutubePlayerController(
          initialVideoId: shownVideos[i].url,
          params: const YoutubePlayerParams(
              showControls: false, autoPlay: false, enableCaption: false));
      shownController.add(_controller);
    }
  }

  Widget buildYTList(List<Video> videosList,
          List<YoutubePlayerController> ytControllerList) =>
      ListView.builder(
          itemCount: videosList.length,
          itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(children: [
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: YoutubePlayerIFrame(
                                  controller: ytControllerList[index])))
                    ]),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 5, left: 10),
                        child: Text(videosList[index].title))
                  ]));

  @override
  void initState() {
    super.initState();
    fillYTList();
    _delegate = _MySearchDelegate(titles);
  }

  void diyFilter(int n) {
    filteredVideos.clear();
    filteredControllers.clear();
    shownController.clear();
    setState(() {
      for (int i = 0; i < videos.length; i++) {
        if (videos[i].flag == n) {
          filteredVideos.add(videos[i]);
          YoutubePlayerController controller = YoutubePlayerController(
              initialVideoId: videos[i].url,
              params: const YoutubePlayerParams(showControls: false));
          filteredControllers.add(controller);
        }
      }
      shownVideos = filteredVideos;
      shownController = filteredControllers;
    });
  }

  void all() {
    shownController.clear();
    setState(() {
      shownVideos = videos;
      for (int i = 0; i < videos.length; i++) {
        YoutubePlayerController _controller = YoutubePlayerController(
            initialVideoId: shownVideos[i].url,
            params: const YoutubePlayerParams(showControls: false));
        shownController.add(_controller);
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar:
          AppBar(title: const Text(home9), centerTitle: true, actions: <Widget>[
        IconButton(
            tooltip: tip,
            icon: const Icon(Icons.search),
            onPressed: () async => await showSearch<String>(
                context: context, delegate: _delegate)),
        PopupMenuButton(
            color: Colors.green,
            tooltip: tip1,
            icon: const Icon(Icons.filter_alt),
            itemBuilder: (context) => [
                  PopupMenuItem(

                      child: const Text(diy,
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        diyFilter(0);
                      }),
                  PopupMenuItem(
                      child: const Text(diy1,
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        diyFilter(1);
                      }),
                  PopupMenuItem(
                      child: const Text(diy2,
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        diyFilter(2);
                      }),
                  PopupMenuItem(
                      child: const Text(diy3,
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        all();
                      }),
                ])
      ]),
      body: Scrollbar(child: buildYTList(shownVideos, shownController)));
}

class _MySearchDelegate extends SearchDelegate<String> {
  final List<String> _words;
  final List<String> _history;

  getSelectedUrl(String string) {
    int selected = 0;
    for (int i = 0; i < videos.length; i++) {
      if (string == videos[i].title) {
        selected = i;
        break;
      }
    }
    return selected;
  }

  _MySearchDelegate(List<String> words)
      : _words = words,
        _history = titles,
        super();

  @override
  Widget buildLeading(BuildContext context) => IconButton(
      tooltip: tip2,
      icon: const Icon(Icons.arrow_back_ios_new),
      onPressed: () => close(context, ''));

  @override
  Widget buildResults(BuildContext context) => Padding(
      padding: const EdgeInsets.all(5),
      child: Center(
          child: GestureDetector(
              onTap: () => close(context, query),
              child: Column(children: <Widget>[
                Row(children: [
                  Expanded(
                      child: YoutubePlayerIFrame(
                          controller: YoutubePlayerController(
                              initialVideoId:
                                  videos[getSelectedUrl(query)].url)))
                ]),
                Text(query, style: textStyle)
              ]))));

  @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<String> suggestions = query.isEmpty
        ? _history
        : _words.where((word) => word.startsWith(query));

    return _SuggestionList(
        query: query,
        suggestions: suggestions.toList(),
        onSelected: (String suggestion) {
          query = suggestion;
          _history.insert(0, suggestion);
          for (int i = 1; i < _history.length; i++) {
            if (_history[i] == suggestion) {
              _history.removeAt(i);
              break;
            }
          }
          showResults(context);
        });
  }

  @override
  List<Widget> buildActions(BuildContext context) => <Widget>[
        if (query.isNotEmpty)
          IconButton(
              tooltip: tip3,
              icon: const Icon(Icons.clear),
              onPressed: () {
                query = '';
                showSuggestions(context);
              })
      ];
}

class _SuggestionList extends StatelessWidget {
  const _SuggestionList(
      {required this.suggestions,
      required this.query,
      required this.onSelected});

  final List<String> suggestions;
  final String query;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.subtitle1!;
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (BuildContext context, int i) {
          final String suggestion = suggestions[i];
          return ListTile(
              leading:
                  query.isEmpty ? const Icon(Icons.history) : const Icon(null),
              title: RichText(
                  text: TextSpan(
                      text: suggestion.substring(0, query.length),
                      style: textTheme.copyWith(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(
                      text: suggestion.substring(query.length),
                      style: textTheme,
                    )
                  ])),
              onTap: () => onSelected(suggestion));
        });
  }
}
