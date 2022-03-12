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


  List<Post> postList = <Post>[];

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
    });

    try {
      var res = await http.post(Uri.parse(url));
      var jsonData = convert.jsonDecode(res.body);
      for (var item in jsonData) {
        setState(() {
          postList.add(Post.fromJson(item));
        });
        debugPrint(item.toString());
      }
      debugPrint(postList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: postList.length,
            itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                              leading: ClipOval(
                                  child: Image.network(postList[index].authorPic,
                                      fit: BoxFit.cover)),
                              title: Text(postList[index].authorName, style: author),
                          trailing: Text(postList[index].time, style: time))),
                      Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(postList[index].content, style: content)),
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.network(posts[index].picture,
                                fit: BoxFit.cover)
                          )),
                      const Divider(height: 3, color: Colors.black)
                    ])),
      );
  }
}
