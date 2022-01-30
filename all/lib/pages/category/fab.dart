import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


// 包含bookmark, readinglist, Q&A 的方法
class FAB extends StatefulWidget {
  const FAB({Key? key, required this.pageName}) : super(key: key);

  // 呼叫FAB時需傳入的頁面名，用於顯示與轉跳頁面
  final String pageName;

  @override
  _FABState createState() => _FABState();
}


class _FABState extends State<FAB> {
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Future _openReadingListDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Add content to Reading List'),
          content: TextField(
            controller: _contentController,
            autofocus: true,
            decoration: const InputDecoration(
                hintText: "Copy the text you want here"
            ),
          ),
          actions: [
            TextButton(
                onPressed: (){
                  addReadingList(widget.pageName, _contentController.text);
                  Navigator.pop(context);
                },
                child: const Text("SUBMIT")
            )
          ],
        )
    );

    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      backgroundColor: Colors.green,
      activeBackgroundColor: Colors.red,
      children: [
        SpeedDialChild(
            child: const Icon(Icons.question_answer_outlined),
            label: 'Q & A'
        ),
        SpeedDialChild(
            child: const Icon(Icons.format_list_bulleted),
            label: 'Reading List',
            onTap: (){
              _openReadingListDialog();
            }
        ),
        SpeedDialChild(
            child: const Icon(Icons.bookmark_add),
            label: 'Bookmark',
            onTap: () => addBookMark(widget.pageName),
        ),
      ],
    );
  }

  void addBookMark(String pageName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = "https://project-ccu-2021.000webhostapp.com/phpformobile/addBookMark.php";
    var data = {
      "userId": prefs.getString("UserId"),
      "pageName": pageName,
    };

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      debugPrint(jsonData);
      Fluttertoast.showToast(
        msg: jsonData.toString(),
      );
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  void addReadingList(String pageName, String content) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = "https://project-ccu-2021.000webhostapp.com/phpformobile/addReadingList.php";
    var data = {
      "userId": prefs.getString("UserId"),
      "pageName": pageName,
      "content" : content,
    };

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      debugPrint(jsonData);
      Fluttertoast.showToast(
        msg: jsonData.toString(),
      );
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

}