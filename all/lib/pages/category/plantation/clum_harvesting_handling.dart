import 'package:flutter/material.dart';
import 'package:all/pages/constant.dart';
import '../fab.dart';
import '../text.dart';

class ClumHarvestingHandling extends StatelessWidget {
  const ClumHarvestingHandling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: const FAB(pageName: har),
      appBar: AppBar(
        title: const Text(har),
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
                    child: SelectableText(cul, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul1, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul2, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul3, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul4, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul5, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul6, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul7, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul8, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/plantation/cul.png"))),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/plantation/cul1.png"))),
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul9, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul10, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul11, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul12, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul13, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul14, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul15, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul16, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul17, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul18, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul19, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul20, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/dot.png"))),
                          Expanded(child: SelectableText(cul21, style: textStyle))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul22, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/plantation/cul2.png")))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul23, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(cul24, style: textStyle)),
              ])));
}
