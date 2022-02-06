import 'package:all/pages/category/text.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import 'diy_url_title.dart' as video_titles;
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'diy_url_title.dart';

class DIY extends StatefulWidget {
  const DIY({Key? key}) : super(key: key);

  @override
  DIYState createState() => DIYState();
}

class DIYState extends State<DIY> {
  final List<YoutubePlayerController> _controllerList = [];
  final List<String> searchFilter;
  late _MySearchDelegate _delegate;

  DIYState()
      : searchFilter = List.from(Set.from(video_titles.title))
          ..sort(
            (w1, w2) => w1.toLowerCase().compareTo(w2.toLowerCase()),
          ),
        super();

  fillYTList() {
    for (int i = 0; i < count; i++) {
      YoutubePlayerController _controller = YoutubePlayerController(
          initialVideoId: url[i],
          params: const YoutubePlayerParams(showControls: true));
      _controllerList.add(_controller);
    }
  }

  @override
  void initState() {
    super.initState();
    fillYTList();
    _delegate = _MySearchDelegate(searchFilter);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text(home9), actions: <Widget>[
        IconButton(
            tooltip: 'Search',
            icon: const Icon(Icons.search),
            onPressed: () async {
              await showSearch<String>(context: context, delegate: _delegate);
            })
      ]),
      body: Scrollbar(
          child: ListView.builder(
              itemCount: searchFilter.length,
              itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: YoutubePlayerIFrame(
                                      controller: _controllerList[index])))
                        ]),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 5, left: 10),
                            child: Text(title[index]))
                      ]))));
}

class _MySearchDelegate extends SearchDelegate<String> {
  final List<String> _words;
  final List<String> _history;

  getSelectedUrl(String string) {
    int selected = 0;
    for (int i = 0; i < count; i++) {
      if (string == title[i]) {
        selected = i;
        break;
      }
    }
    return selected;
  }

  _MySearchDelegate(List<String> words)
      : _words = words,
        _history = title,
        super();

  @override
  Widget buildLeading(BuildContext context) => IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, ''));

  @override
  Widget buildResults(BuildContext context) => Padding(
      padding: const EdgeInsets.all(5),
      child: Center(
          child: GestureDetector(
              onTap: () => close(context, query),
              child: Column(children: <Widget>[
                Row(
                  children: [
                    Expanded(
                        child: YoutubePlayerIFrame(
                            controller: YoutubePlayerController(
                                initialVideoId: url[getSelectedUrl(query)])))
                  ],
                ),
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
          showResults(context);
        });
  }

  @override
  List<Widget> buildActions(BuildContext context) => <Widget>[
        if (query.isNotEmpty)
          IconButton(
              tooltip: 'Clear',
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
