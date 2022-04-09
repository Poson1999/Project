import 'dart:convert' as convert;
import 'package:all/pages/constant.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:all/pages/exams/record.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({Key? key}) : super(key: key);

  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {

  List<Record> recordList = <Record>[];

  @override
  void initState() {
    getRecordList();
    super.initState();
  }

  // 取得該使用者的書籤資料
  void getRecordList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = serverDomain + "/phpformobile/getRecordList.php";
    var data = {
      "userId": prefs.getString("UserId")
    };

    setState(() {
      recordList.clear();
    });

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      if(jsonData != "empty") {
        debugPrint(jsonData.toString());
        for(var item in jsonData) {
          setState(() {
            recordList.add(Record.fromJson(item));
          });
          // debugPrint(item.toString());
        }
      } else {
        // debugPrint("List is empty.");
      }
      // debugPrint(recordList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }


  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('ReadingList'),
        centerTitle: true,
      ),
      body: recordList.isEmpty
          ? const Center(
        child: Text("None", style: TextStyle(fontSize: 30)),
      )
          :ListView.separated(
        itemCount: recordList.length,
        padding: const EdgeInsets.all(10.0),
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()),
            ),
            title: Text(recordList[index].level),
            subtitle: Text(recordList[index].date),
            trailing: Text(recordList[index].score.toString()),
            onTap: () {} ,
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(),
      )
  );
}
