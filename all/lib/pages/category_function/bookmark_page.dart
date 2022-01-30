import 'dart:convert' as convert;
import 'package:all/class/bookmark.dart';
import 'package:all/pages/category/selection/commercial_bamboo_species.dart';
import 'package:all/pages/category/selection/selection_of_bamboo.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class BookMarkPage extends StatefulWidget {
  const BookMarkPage({Key? key}) : super(key: key);

  @override
  _BookMarkPageState createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {

  List<Bookmark> bookmarkList = <Bookmark>[];

  @override
  void initState() {
    getBookMark();
    super.initState();
  }

  // 取得該使用者的書籤資料
  void getBookMark() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = "https://project-ccu-2021.000webhostapp.com/phpformobile/getBookMark.php";
    var data = {
      "userId": prefs.getString("UserId")
    };

    setState(() {
      bookmarkList.clear();
    });

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      for(var item in jsonData) {
        setState(() {
          bookmarkList.add(Bookmark.fromJson(item));
        });
        debugPrint(item.toString());
      }
      debugPrint(bookmarkList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  // 轉跳至該頁面，這裡用每個頁面的pageName判斷
  void goToPage(String pageName){
    switch(pageName){
      case "SELECTION OF BAMBOO":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SelectionOfBamboo()));
        break;
      case "COMMERCIAL BAMBOO SPECIES":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CommericalBambooSpecies()));
        break;
    }
    
  }


  // 刪除選中的書籤
  void deleteBookMark(String bookmarkId) async {
    var url = "https://project-ccu-2021.000webhostapp.com/phpformobile/deleteBookMark.php";
    var data = {
      "id": bookmarkId
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
      title: const Text("Delete Bookmark"),
      content: const Text("Are you sure to delete this bookmark?"),
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
      title: const Text('BookMark'),
      centerTitle: true,
    ),
    body: ListView.separated(
        itemCount: bookmarkList.length,
        padding: const EdgeInsets.all(10.0),
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()),
            ),
            title: Text(bookmarkList[index].pageName),
            trailing: IconButton(
              icon: const Icon(Icons.delete_forever),
              onPressed: () async {
                var result = await _showDeleteDialog(context);

                if(result == 1) {
                  deleteBookMark(bookmarkList[index].id);

                  // 刪除資料後更新列表
                  getBookMark();
                } else {
                  Fluttertoast.showToast(
                    msg: "cancel ",
                  );
                }

              },
            ),
            onTap: () => goToPage(bookmarkList[index].pageName),
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(),
      )
    );
}
