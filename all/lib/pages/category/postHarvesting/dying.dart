import 'package:flutter/material.dart';
import '../../constant.dart';
import '../fab.dart';
import '../text.dart';

class Dying extends StatelessWidget {
  const Dying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: const FAB(pageName: phm1),
      appBar: AppBar(
        title: const Text(phm1),
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
                    child: SelectableText(dy, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(dy1, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(dy2, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(dy3, style: subStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(dy4, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(dy5, style: subStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(dy6, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(dy7, style: titleStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/d.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/d1.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(dy8, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(child: SelectableText(dy9, style: textStyle))
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
                                      "assets/images/category/post/d2.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/d3.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(dy10, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(dy11, style: textStyle))
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
                                      "assets/images/category/post/d4.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/d5.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(dy12, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(dy13, style: textStyle))
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
                                      "assets/images/category/post/d6.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/d7.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(dy14, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(dy15, style: textStyle))
                        ])),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Image(
                          image:
                              AssetImage("assets/images/category/post/d8.png"))
                    ]),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          SizedBox(
                              width: 200,
                              child: SelectableText(dy16, style: textStyle))
                        ])),
              ])));
}
