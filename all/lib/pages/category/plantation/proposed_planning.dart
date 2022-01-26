import 'package:flutter/material.dart';
import 'package:all/pages/constant.dart';
import '../fab.dart';
import '../text.dart';

class ProposedPlanning extends StatelessWidget {
  const ProposedPlanning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: const FAB(pageName: nur1),
      appBar: AppBar(
        title: const Text(nur1),
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
                    child: SelectableText(pro, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(pro1, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(pro2, style: textStyle)),
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
                          Expanded(child: SelectableText(pro3, style: textStyle))
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
                          Expanded(child: SelectableText(pro4, style: textStyle))
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
                          Expanded(child: SelectableText(pro5, style: textStyle))
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
                          Expanded(child: SelectableText(pro6, style: textStyle))
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
                          Expanded(child: SelectableText(pro7, style: textStyle))
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
                          Expanded(child: SelectableText(pro8, style: textStyle))
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
                          Expanded(child: SelectableText(pro9, style: textStyle))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(pro10, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/plantation/pro.png"))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(pro11, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(pro12, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(pro13, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(pro14, style: textStyle)),
              ])));
}
