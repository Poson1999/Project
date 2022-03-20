import 'package:all/pages/constant.dart';
import 'package:all/pages/exams/exam_question.dart';
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
        debugPrint(item.toString());
      }
      debugPrint(EQList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) =>
      EQList.isEmpty ? Scaffold(
        appBar: AppBar(title: const Text('Primary Level'), centerTitle: true,),
        body: const Center(
          child: Text("Loading...", style: TextStyle(fontSize: 30)),
        ),
      ) :
      Scaffold(
        appBar: AppBar(title: const Text('Primary Level'), centerTitle: true,),
        body:ListView.builder(
          itemCount: EQList.length+1,
          itemBuilder: (context, index) => index == EQList.length
              ? Padding(
                  padding: EdgeInsets.all(12),
                  child: ElevatedButton(onPressed: (){}, child: Text("Submit")),
              )
              : Card(
              elevation: 4,
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: EdgeInsets.all(10),
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
      );
}
