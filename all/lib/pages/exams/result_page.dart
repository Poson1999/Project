import 'package:all/pages/constant.dart';
import 'package:all/pages/exams/BarData.dart';
import 'package:all/pages/exams/exam_question.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key , required this.score, required this.examResultList,required this.chartData}) : super(key: key);
  final List<EQuestion> examResultList;
  final List<BarData> chartData;
  final double score;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  void initState() {
    computeData(widget.examResultList, widget.chartData);
    // TODO: implement initState
    super.initState();
  }

  void computeData(List<EQuestion> L1, List<BarData> L2) {
    for(var q in L1){
      if(q.selectedAnswer != q.correctAnswer){
        for(var c in L2){
          if(q.category == c.category){
            setState(() {
              c.numbers++;
            });
          }
        }
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarData, String>> series = [
      charts.Series(
        id: "wrong question form",
        data: widget.chartData,
        domainFn: (BarData series, _) => series.category,
        measureFn: (BarData series, _) => series.numbers,
      )
    ];

    return Scaffold(
        appBar: AppBar(title: const Text('Exam Result'), centerTitle: true),
        body: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Your Score: " + widget.score.toStringAsFixed(0), style: const TextStyle(fontSize: 30)),
            ),
            Expanded(
              child: charts.BarChart(series, vertical: false,),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.examResultList.length,
                itemBuilder: (context, index) =>Card(
                    elevation: 4,
                    margin: const EdgeInsets.all(12),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children:[
                          Text("Q" + (index+1).toString() + ", " + widget.examResultList[index].question,
                              style: titleStyle,
                              textAlign: TextAlign.center),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: widget.examResultList[index].imageUrl==null ? Container():
                            Image.network(widget.examResultList[index].imageUrl!,
                                fit: BoxFit.cover),
                          ),
                          ElevatedButton(
                              onPressed: () {
                              },
                              child: Text(widget.examResultList[index].option1, style: textStyle),
                              style: widget.examResultList[index].correctAnswer == widget.examResultList[index].option1 ? selected
                                  : widget.examResultList[index].selectedAnswer == widget.examResultList[index].option1 ? wrong : option
                          ),
                          ElevatedButton(
                              onPressed: () {
                              },
                              child: Text(widget.examResultList[index].option2, style: textStyle),
                              style: widget.examResultList[index].correctAnswer == widget.examResultList[index].option2 ? selected
                                  : widget.examResultList[index].selectedAnswer == widget.examResultList[index].option2 ? wrong : option
                          ),
                          ElevatedButton(
                              onPressed: () {
                              },
                              child: Text(widget.examResultList[index].option3, style: textStyle),
                              style: widget.examResultList[index].correctAnswer == widget.examResultList[index].option3 ? selected
                                  : widget.examResultList[index].selectedAnswer == widget.examResultList[index].option3 ? wrong : option
                          ),
                          ElevatedButton(
                              onPressed: () {
                              },
                              child: Text(widget.examResultList[index].option4, style: textStyle),
                              style: widget.examResultList[index].correctAnswer == widget.examResultList[index].option4 ? selected
                                  : widget.examResultList[index].selectedAnswer == widget.examResultList[index].option4 ? wrong : option
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Category: " + widget.examResultList[index].category , textAlign: TextAlign.end,),
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ),
            )
          ],
        )
    );
  }
}



