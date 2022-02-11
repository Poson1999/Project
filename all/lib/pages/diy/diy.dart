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
  List<Video> shownVideos = videos;
  List<YoutubePlayerController> shownController = [];
  late _MySearchDelegate delegate;

  void fillYTList(
      List<Video> videoList, List<YoutubePlayerController> controllerList) {
    for (int i = 0; i < videoList.length; i++) {
      YoutubePlayerController controller =
          YoutubePlayerController(initialVideoId: videoList[i].url);
      controllerList.add(controller);
    }
  }

  @override
  void initState() {
    super.initState();
    fillYTList(videos, shownController);
    delegate = _MySearchDelegate(titles);
  }

  void diyFilter(int n) {
    filterTitle = diy[n];
    filtered.clear();
    for (int i = 0; i < videos.length; i++) {
      if (videos[i].flag == n) {
        filtered.add(videos[i]);
      }
    }
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const DIYFilter()));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar:
          AppBar(title: const Text(home9), centerTitle: true, actions: <Widget>[
        IconButton(
            tooltip: tip,
            icon: const Icon(Icons.search),
            onPressed: () async =>
                await showSearch<String>(context: context, delegate: delegate)),
        PopupMenuButton(
            color: Colors.green,
            tooltip: tip1,
            offset: const Offset(0, 50),
            icon: const Icon(Icons.filter_alt),
            itemBuilder: (context) => <PopupMenuEntry>[
                  PopupMenuItem(
                      child: SizedBox(
                          width: double.infinity,
                          child: TextButton(
                              child: Text(diy[0],
                                  style: const TextStyle(color: Colors.white)),
                              onPressed: () => diyFilter(0)))),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                      child: SizedBox(
                          width: double.infinity,
                          child: TextButton(
                              child: Text(diy[1],
                                  style: const TextStyle(color: Colors.white)),
                              onPressed: () => diyFilter(1)))),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                      child: SizedBox(
                          width: double.infinity,
                          child: TextButton(
                              child: Text(diy[2],
                                  style: const TextStyle(color: Colors.white)),
                              onPressed: () => diyFilter(2))))
                ])
      ]),
      body: Scrollbar(
          child: ListView.builder(
              itemCount: shownVideos.length,
              itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: YoutubePlayerIFrame(
                                controller: shownController[index])),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 5, left: 10),
                            child: Text(shownVideos[index].title))
                      ]))));
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
  Widget buildResults(BuildContext context) => Center(
      child: GestureDetector(
          onTap: () => close(context, query),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: YoutubePlayerIFrame(
                        controller: YoutubePlayerController(
                            initialVideoId: videos[getSelectedUrl(query)].url)),
                  ))
                ]),
                Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Text(query, style: textStyle))
              ])));

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
      YoutubePlayerController controller =
          YoutubePlayerController(initialVideoId: filtered[i].url);
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
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: YoutubePlayerIFrame(
                                controller: filteredControllers[index])),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 5, left: 10),
                            child: Text(filtered[index].title))
                      ]))));
}
