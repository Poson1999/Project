import 'dart:convert' as convert;
import 'package:all/class/qa_list_item.dart';
import 'package:all/pages/category_function/question_page.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QAList extends StatefulWidget {
  const QAList({Key? key}) : super(key: key);

  @override
  _QAListState createState() => _QAListState();
}

class _QAListState extends State<QAList> {
  final TextEditingController _answerController = TextEditingController();

  List<QAListItem> QAList = <QAListItem>[];
  List<QAListItem> AllQAList = <QAListItem>[];

  @override
  void initState() {
    getQAList();
    getAllQAList();
    super.initState();
  }

  // 取得該使用者的書籤資料
  void getQAList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url =
        "https://project-ccu-2021.000webhostapp.com/phpformobile/getQAList.php";
    var data = {"userId": prefs.getString("UserId")};

    setState(() {
      QAList.clear();
    });

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      for (var item in jsonData) {
        setState(() {
          QAList.add(QAListItem.fromJson(item));
        });
        debugPrint(item.toString());
      }
      debugPrint(QAList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  void getAllQAList() async {
    var url =
        "https://project-ccu-2021.000webhostapp.com/phpformobile/getAllQAList.php";

    setState(() {
      AllQAList.clear();
    });

    try {
      var res = await http.post(Uri.parse(url));
      var jsonData = convert.jsonDecode(res.body);
      for (var item in jsonData) {
        setState(() {
          AllQAList.add(QAListItem.fromJson(item));
        });
        debugPrint(item.toString());
      }
      debugPrint(AllQAList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  void deleteQA(String qaId) async {
    var url =
        "https://project-ccu-2021.000webhostapp.com/phpformobile/deleteQA.php";
    var data = {"id": qaId};

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

  _showDeleteDialog(BuildContext context) async {
    var dialog = AlertDialog(
      title: const Text("Delete this Question"),
      content: const Text("Are you sure to delete this Question?"),
      actions: <Widget>[
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

  void answerQA(String qaId, String answer) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url =
        "https://project-ccu-2021.000webhostapp.com/phpformobile/answerQA.php";
    var data = {
      "id": qaId,
      "answerer_id": prefs.getString("UserId"),
      "answer": answer,
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

  Future _openQADialog(String id) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Reply the question'),
            content: TextField(
              controller: _answerController,
              autofocus: true,
              decoration:
                  const InputDecoration(hintText: "Enter the answer here."),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    answerQA(id, _answerController.text);
                    setState(() {
                      getQAList();
                      getAllQAList();
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("SUBMIT"))
            ],
          ));

  @override
  Widget build(BuildContext context) {
    final _tapPages = <Widget>[
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.separated(
            itemCount: QAList.length,
            padding: const EdgeInsets.all(10.0),
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  // 已回答為綠色
                  backgroundColor: QAList[index].answererId != ""
                      ? Colors.green
                      : Colors.grey,
                  foregroundColor: Colors.white,
                  child: Text((index + 1).toString()),
                ),
                title: Text(QAList[index].question, maxLines: 1),
                subtitle: Text(QAList[index].answer,
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                trailing: IconButton(
                  icon: const Icon(Icons.delete_forever),
                  onPressed: () async {
                    var result = await _showDeleteDialog(context);

                    if (result == 1) {
                      deleteQA(QAList[index].id);

                      // 刪除資料後更新列表
                      getQAList();
                      getAllQAList();
                    } else {
                      Fluttertoast.showToast(
                        msg: "cancel ",
                      );
                    }
                  },
                ),
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              QuestionPage(question: QAList[index])));
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          )),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.separated(
            itemCount: AllQAList.length,
            padding: const EdgeInsets.all(10.0),
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: AllQAList[index].answererId != ""
                      ? Colors.green
                      : Colors.grey,
                  foregroundColor: Colors.white,
                  child: Text((index + 1).toString()),
                ),
                title: Text(AllQAList[index].question, maxLines: 1),
                subtitle: Text(AllQAList[index].answer,
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                trailing: IconButton(
                  icon: const Icon(Icons.reply),
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    // 必須擁有權限才能回答
                    if (prefs.getString('UserIdCode') != "0") {
                      Fluttertoast.showToast(
                          msg:
                              "Only the administrator can reply the question.");
                    } else {
                      _openQADialog(AllQAList[index].id);
                    }
                  },
                ),
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              QuestionPage(question: AllQAList[index])));
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ))
    ];
    const _tabs = <Tab>[
      Tab(icon: Icon(Icons.perm_identity), text: 'Post by me'),
      Tab(icon: Icon(Icons.public), text: 'World Forum')
    ];
    return DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
            appBar: AppBar(title: const TabBar(tabs: _tabs)),
            body: TabBarView(children: _tapPages)));
  }
}
