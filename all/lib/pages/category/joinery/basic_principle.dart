import 'package:flutter/material.dart';
import '../../constant.dart';
import '../fab.dart';
import '../text.dart';

class BasicPrinciple extends StatelessWidget {
  const BasicPrinciple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: const FAB(pageName: j),
      appBar: AppBar(
        title: const Text(j),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 20, right: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(bp0, style: titleStyle)),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(bp, style: textStyle)),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(bp1, style: titleStyle)),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(bp2, style: textStyle))
              ])));
}
