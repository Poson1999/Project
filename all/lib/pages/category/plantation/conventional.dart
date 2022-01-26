import 'package:flutter/material.dart';
import 'package:all/pages/constant.dart';
import '../fab.dart';
import '../text.dart';

class Conventional extends StatelessWidget {
  const Conventional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: const FAB(pageName: pm1),
      appBar: AppBar(
        title: const Text(pm1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 16, bottom: 16 ,left: 20, right: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con1, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/plantation/con0.png"))),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/plantation/con1.png"))),
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          SelectableText(con2, style: imgText)
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con3, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con4, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/plantation/con2.png"))),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/plantation/con3.png"))),
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          SelectableText(con5, style: imgText)
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con6, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con7, style: subStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con8, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con9, style: subStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con10, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/plantation/con4.png"))),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/plantation/con5.png"))),
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con11, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con12, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/plantation/con6.png"))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          SelectableText(con18, style: imgText)
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con13, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/plantation/con7.png"))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          SelectableText(con18, style: imgText)
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con14, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con15, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con16, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(con17, style: textStyle)),
              ])));
}
