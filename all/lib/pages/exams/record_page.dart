import 'dart:convert' as convert;
import 'package:all/pages/constant.dart';
import 'package:all/pages/exams/record_detail_page.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';
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
  List<Record> allRecordList = <Record>[];
  bool showAverage = false;
  int numOfQuestion = 0;
  int numOfAllQuestion = 0;

  @override
  void initState() {
    getRecordList();
    getAllRecordList();
    super.initState();
  }

  // 取得所有使用者的考試資料
  void getAllRecordList() async {
    var url = serverDomain + "/phpformobile/getAllRecordList.php";

    setState(() {
      allRecordList.clear();
      numOfAllQuestion = 0;
    });

    try {
      var res = await http.post(Uri.parse(url));
      var jsonData = convert.jsonDecode(res.body);
      for (var item in jsonData) {
        setState(() {
          allRecordList.add(Record.fromJson(item));
        });
        // debugPrint(item.toString());
      }

      //計算各類共有多少題
      for (Record r in allRecordList) {
        switch (r.level) {
          case "primary":
            setState(() {
              numOfAllQuestion++;
            });
            break;
          case "middle":
            setState(() {
              numOfAllQuestion += 2;
            });
            break;
          case "advanced":
            setState(() {
              numOfAllQuestion += 3;
            });
            break;
        }
      }
      // debugPrint(allRecordList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  // 取得該使用者的考試資料
  void getRecordList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = serverDomain + "/phpformobile/getRecordList.php";
    var data = {"userId": prefs.getString("UserId")};

    setState(() {
      recordList.clear();
      numOfQuestion = 0;
    });

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      if (jsonData != "empty") {
        for (var item in jsonData) {
          setState(() {
            recordList.add(Record.fromJson(item));
          });
          // debugPrint(item.toString());
        }

        //計算各類共有多少題
        for (Record r in recordList) {
          switch (r.level) {
            case "primary":
              setState(() {
                numOfQuestion++;
              });
              break;
            case "middle":
              setState(() {
                numOfQuestion += 2;
              });
              break;
            case "advanced":
              setState(() {
                numOfQuestion += 3;
              });
              break;
          }
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

  List<int> getChartData(List<Record> rList, int noq) {
    //每個category的答對數量
    int c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0, c6 = 0, c7 = 0;

    for (Record r in rList) {
      c1 += int.parse(r.category1);
      c2 += int.parse(r.category2);
      c3 += int.parse(r.category3);
      c4 += int.parse(r.category4);
      c5 += int.parse(r.category5);
      c6 += int.parse(r.category6);
      c7 += int.parse(r.category7);
    }

    // 回傳答對率
    return [
      (c1 * 100 / noq).round(),
      (c2 * 100 / noq).round(),
      (c3 * 100 / noq).round(),
      (c4 * 100 / noq).round(),
      (c5 * 100 / noq).round(),
      (c6 * 100 / noq).round(),
      (c7 * 100 / noq).round()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Exam Record'),
          centerTitle: true,
        ),
        body: recordList.isEmpty
            ? const Center(
                child: Text("No Record Yet", style: TextStyle(fontSize: 30)),
              )
            : Column(
                children: [
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: RadarChart(
                              features: const [
                                "Selection of Bamboo",
                                "Plantation",
                                "Post\nHarvesting",
                                "Construction\nSequence",
                                "Joinery",
                                "Tools",
                                "Value\nChain"
                              ],
                              ticks: const [
                                20,
                                40,
                                60,
                                80,
                                100
                              ],
                              data: showAverage
                                  ? [
                                      getChartData(recordList, numOfQuestion),
                                      getChartData(
                                          allRecordList, numOfAllQuestion)
                                    ]
                                  : [
                                      getChartData(recordList, numOfQuestion)
                                    ]))),
                  ElevatedButton(
                    child: showAverage
                        ? const Text("Show only my average")
                        : const Text("Show all user's average"),
                    onPressed: () => setState(() {
                      showAverage = !showAverage;
                    }),
                  ),
                  Expanded(
                      child: ListView.separated(
                    itemCount: recordList.length,
                    padding: const EdgeInsets.all(10.0),
                    itemBuilder: (context, index) => ListTile(
                      leading: CircleAvatar(
                        child: Text((index + 1).toString()),
                      ),
                      title: Text(recordList[index].level),
                      subtitle: Text(recordList[index].date),
                      trailing: Text(recordList[index].score,
                          style: int.parse(recordList[index].score) >= 60
                              ? pass
                              : fail),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RecordDetailPage(record: recordList[index]))),
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ))
                ],
              ));
  }
}
