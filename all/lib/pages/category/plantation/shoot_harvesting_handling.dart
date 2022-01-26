import 'package:flutter/material.dart';
import 'package:all/pages/constant.dart';
import '../fab.dart';
import '../text.dart';

class ShootHarvestingHandling extends StatelessWidget {
  const ShootHarvestingHandling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: const FAB(pageName: har1),
      appBar: AppBar(
        title: const Text(har1),
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
                    child: SelectableText(sh, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(sh1, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(sh2, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(sh3, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(sh4, style: textStyle)),
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
                          Expanded(child: SelectableText(sh5, style: textStyle))
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
                          Expanded(child: SelectableText(sh6, style: textStyle))
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
                          Expanded(child: SelectableText(sh7, style: textStyle))
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
                          Expanded(child: SelectableText(sh8, style: textStyle))
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
                          Expanded(child: SelectableText(sh9, style: textStyle))
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
                          Expanded(child: SelectableText(sh10, style: textStyle))
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
                          Expanded(child: SelectableText(sh11, style: textStyle))
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
                          Expanded(child: SelectableText(sh12, style: textStyle))
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
                          Expanded(child: SelectableText(sh13, style: textStyle))
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
                          Expanded(child: SelectableText(sh14, style: textStyle))
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
                          Expanded(child: SelectableText(sh15, style: textStyle))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(sh16, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/plantation/sho.png"))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/plantation/sho1.png"))
                        ])),
              ])));
}
