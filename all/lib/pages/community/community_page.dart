import 'package:all/pages/community/posts.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                              leading: ClipOval(
                                  child: Image.network(posts[index].authorPic,
                                      fit: BoxFit.cover)),
                              title: Text(posts[index].authorName, style: author))),
                      Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                          child: Text(posts[index].time, style: content)),
                      Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(posts[index].content, style: content)),
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.network(posts[index].picture,
                              fit: BoxFit.cover))
                    ])),
      );
}
