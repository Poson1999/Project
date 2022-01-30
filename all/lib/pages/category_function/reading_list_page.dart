import 'dart:convert' as convert;
import 'package:all/class/reading_list_item.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ReadingListPage extends StatefulWidget {
  const ReadingListPage({Key? key}) : super(key: key);

  @override
  _ReadingListPageState createState() => _ReadingListPageState();
}

class _ReadingListPageState extends State<ReadingListPage> {

  List<ReadingListItem> ReadingList = <ReadingListItem>[];

  @override
  void initState() {
    getReadingList();
    super.initState();
  }

  // 取得該使用者的書籤資料
  void getReadingList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = "https://project-ccu-2021.000webhostapp.com/phpformobile/getReadingList.php";
    var data = {
      "userId": prefs.getString("UserId")
    };

    setState(() {
      ReadingList.clear();
    });

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      for(var item in jsonData) {
        setState(() {
          ReadingList.add(ReadingListItem.fromJson(item));
        });
        debugPrint(item.toString());
      }
      debugPrint(ReadingList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }



  // 刪除選中的書籤
  void deleteReadingList(String readingListId) async {
    var url = "https://project-ccu-2021.000webhostapp.com/phpformobile/deleteReadingList.php";
    var data = {
      "id": readingListId
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

  // 重複確認是否刪除的對話框
  _showDeleteDialog(BuildContext context) async {
    var dialog = AlertDialog(
      title: const Text("Delete Reading List Item"),
      content: const Text("Are you sure to delete this Reading List item?"),
      actions: <Widget> [
        TextButton(
          child: const Text("Yes"),
          onPressed: () => Navigator.pop(context, 1),
        ),
        TextButton(
          child: const Text("No"),
          onPressed: () => Navigator.pop(context, 0),
        )
      ],
    );

    var result = showDialog(
      context: context,
      builder: (context) => dialog,
    );

    return result;
  }


  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('ReadingList'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: ReadingList.length,
        padding: const EdgeInsets.all(10.0),
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()),
            ),
            title: Text(ReadingList[index].pageName),
            subtitle: Text(ReadingList[index].content),
            trailing: IconButton(
              icon: const Icon(Icons.delete_forever),
              onPressed: () async {
                var result = await _showDeleteDialog(context);

                if(result == 1) {
                  deleteReadingList(ReadingList[index].id);

                  // 刪除資料後更新列表
                  getReadingList();
                } else {
                  Fluttertoast.showToast(
                    msg: "cancel ",
                  );
                }

              },
            ),
            onTap: () {} ,
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(),
      )
  );
}