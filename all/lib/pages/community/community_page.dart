import 'package:all/pages/community/post.dart';
import 'package:all/pages/community/posts.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final searchController = TextEditingController();

  List<Post> postList = <Post>[];// 從資料庫抓取到的、原始的所有的貼文
  List<Post> posts = <Post>[];// 經過search後實際上展示的貼文

  @override
  void initState() {
    getPostList();
    super.initState();
  }

  void getPostList() async {
    var url =
        "https://project-ccu-2021.000webhostapp.com/phpformobile/getPost.php";

    setState(() {
      postList.clear();
      posts.clear();
    });

    try {
      var res = await http.post(Uri.parse(url));
      var jsonData = convert.jsonDecode(res.body);
      for (var item in jsonData) {
        setState(() {
          postList.add(Post.fromJson(item));
        });
        // debugPrint(item.toString());
      }
      posts = postList;
      // debugPrint(postList.toString());
    } catch (e) {
      debugPrint(e.toString());
      // Fluttertoast.showToast(
      //   msg: "Error: " + e.toString(),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search for post content or author',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onChanged: searchPost,
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: posts.length,
                      itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: ListTile(
                                    leading: ClipOval(
                                        child: Image.network(posts[index].authorPic,
                                            fit: BoxFit.cover)),
                                    title: Text(posts[index].authorName, style: author),
                                    trailing: Text(posts[index].time, style: time))),
                            Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: Text(posts[index].content, style: content)),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                    width: double.infinity,
                                    child: Image.network(posts[index].picture,
                                        fit: BoxFit.cover)
                                )),
                            const Divider(height: 3, color: Colors.black)
                          ])),
              )
            ],
          ),
      );
    }

    // 搜尋貼文與作者
    void searchPost(String query) {
      final result = postList.where((post) {
        final postContent = post.content.toLowerCase();
        final postAuthor = post.authorName.toLowerCase();
        final input = query.toLowerCase();

        return postContent.contains(input) || postAuthor.contains(input);
      }).toList();

      setState(() => posts = result);
    }
}
