import 'package:all/pages/exams/BarData.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:all/pages/exams/record.dart';
import 'package:flutter/material.dart';


class RecordDetailPage extends StatefulWidget {
  const RecordDetailPage({Key? key, required this.record}) : super(key: key);

  final Record record;

  @override
  _RecordDetailPageState createState() => _RecordDetailPageState();
}

class _RecordDetailPageState extends State<RecordDetailPage> {

  List<BarData> chartData = [
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
    computeData(widget.record, chartData);
    // TODO: implement initState
    super.initState();
  }

  void computeData(Record r, List<BarData> L) {
    for(var b in L){
      switch(b.category){
        case "Selection of Bamboo":
          b.numbers = int.parse(r.category1);
          break;
        case "Plantation":
          b.numbers = int.parse(r.category2);
          break;
        case "Post Harvesting":
          b.numbers = int.parse(r.category3);
          break;
        case "Construction Sequence":
          b.numbers = int.parse(r.category4);
          break;
        case "Joinery":
          b.numbers = int.parse(r.category5);
          break;
        case "Tools":
          b.numbers = int.parse(r.category6);
          break;
        case "Value Chain":
          b.numbers = int.parse(r.category7);
          break;
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarData, String>> series = [
      charts.Series(
        id: "wrong question form",
        data: chartData,
        domainFn: (BarData series, _) => series.category,
        measureFn: (BarData series, _) => series.numbers,
      )
    ];

    return Scaffold(
      appBar:AppBar(title: const Text('Exam Record Detail'), centerTitle: true),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Your Score: " + widget.record.score, style: const TextStyle(fontSize: 30)),
          ),
          Expanded(
            child: charts.BarChart(series, vertical: false,),
          ),
        ],
      ),
    );
  }
}
