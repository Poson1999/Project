import 'package:all/pages/constant.dart';
import 'package:all/pages/exams/BarData.dart';
import 'package:all/pages/exams/exam_question.dart';
import 'package:all/pages/exams/result_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PrimaryTest extends StatefulWidget {
  const PrimaryTest({Key? key}) : super(key: key);

  @override
  _PrimaryTestState createState() => _PrimaryTestState();
}

class _PrimaryTestState extends State<PrimaryTest> {
  List<EQuestion> EQList = <EQuestion> [];

  List<BarData> ChartData = [
    BarData(
      id: 1,
      category: "Selection of Bamboo",
      numbers: 0,
    ),
    BarData(
      id: 2,
      category: "Plantation",
      numbers: 0,
    ),
    BarData(
      id: 3,
      category: "Post Harvesting",
      numbers: 0,
    ),
    BarData(
      id: 4,
      category: "Construction Sequence",
      numbers: 0,
    ),
    BarData(
      id: 5,
      category: "Joinery",
      numbers: 0,
    ),
    BarData(
      id: 6,
      category: "Tools",
      numbers: 0,
    ),
    BarData(
      id: 7,
      category: "Value Chain",
      numbers: 0,
    )
  ];

  @override
  void initState() {
    getEQList();
    super.initState();
  }

  void getEQList() async {
    var url =
        "https://project-ccu-2021.000webhostapp.com/phpformobile/getEQList.php";

    setState(() {
      EQList.clear();
    });

    try {
      var res = await http.post(Uri.parse(url));
      var jsonData = convert.jsonDecode(res.body);
      for (var item in jsonData) {
        setState(() {
          EQList.add(EQuestion.fromJson(item));
        });
        // debugPrint(item.toString());
      }
      // debugPrint(EQList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }
  
  double computeScore(List<EQuestion> L, List<BarData> LC){
    double scores = 0;
    for(var q in L){
      if(q.selectedAnswer == q.correctAnswer){
        scores += 100/L.length;
      }
    }
    return scores;
  }

  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Do you want to quit exam?"),
        content: const Text("The result you make won't be saved."),
        actions: [
          ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text("YES"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("NO"),
          )
        ],
      )
  );

  @override
  Widget build(BuildContext context) =>
      EQList.isEmpty ? Scaffold(
        appBar: AppBar(title: const Text('Primary Level'), centerTitle: true,),
        body: const Center(
          child: Text("Loading...", style: TextStyle(fontSize: 30)),
        ),
      ) :
      WillPopScope(
          child: Scaffold(
            appBar: AppBar(title: const Text('Primary Level'), centerTitle: true,),
            body:ListView.builder(
              itemCount: EQList.length+1,
              itemBuilder: (context, index) => index == EQList.length
                  ? Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(
                                score: computeScore(EQList, ChartData),
                                examResultList: EQList,
                                chartData: ChartData,)));
                    },
                    child: const Text("Submit")
                ),
              )
                  : Card(
                  elevation: 4,
                  margin: const EdgeInsets.all(12),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children:[
                        Text("Q" + (index+1).toString() + ", " + EQList[index].question,
                            style: titleStyle,
                            textAlign: TextAlign.center),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: EQList[index].imageUrl==null ? Container():
                          Image.network(EQList[index].imageUrl!,
                              fit: BoxFit.cover),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                EQList[index].selectedAnswer = EQList[index].option1;
                              });
                            },
                            child: Text(EQList[index].option1, style: textStyle),
                            style: EQList[index].selectedAnswer == EQList[index].option1 ? selected : option
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                EQList[index].selectedAnswer = EQList[index].option2;
                              });
                            },
                            child: Text(EQList[index].option2, style: textStyle),
                            style: EQList[index].selectedAnswer == EQList[index].option2 ? selected : option
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                EQList[index].selectedAnswer = EQList[index].option3;
                              });
                            },
                            child: Text(EQList[index].option3, style: textStyle),
                            style: EQList[index].selectedAnswer == EQList[index].option3 ? selected : option
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                EQList[index].selectedAnswer = EQList[index].option4;
                              });
                            },
                            child: Text(EQList[index].option4, style: textStyle),
                            style: EQList[index].selectedAnswer == EQList[index].option4 ? selected : option
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Category: " + EQList[index].category , textAlign: TextAlign.end,),
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ),
          ),
          onWillPop: () async {
            debugPrint("Back Button Pressed.");

            final shouldPop = await showWarning(context);
            return shouldPop ?? false;
          }
      );
}
