import 'package:flutter/material.dart';
import '../../constant.dart';
import '../fab.dart';
import '../text.dart';

class FinishingMethod extends StatelessWidget {
  const FinishingMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: const FAB(pageName: phm2),
      appBar: AppBar(
        title: const Text(phm2),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding:
          const EdgeInsets.only(top: 16, bottom: 16, left: 20, right: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fm, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fm1, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fm2, style: subStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fm3, style: textStyle)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Image(
                          image:
                          AssetImage("assets/images/category/post/fm.png"))
                    ]),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fm4, style: titleStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fm1.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fm2.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fm5, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fm6, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fm3.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fm4.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fm7, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fm8, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fm5.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fm6.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fm9, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fm10, style: textStyle))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fm11, style: textStyle))
              ])));
}
