import 'package:flutter/material.dart';
import '../../constant.dart';
import '../fab.dart';
import '../text.dart';

class FurnitureProducts extends StatelessWidget {
  const FurnitureProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: const FAB(pageName: phm4),
      appBar: AppBar(
        title: const Text(phm4),
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
                    child: SelectableText(wp, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fp1, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fp2, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              flex: 167,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              flex: 193,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr1.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/post/fr2.png"))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fp3, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fp4, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht1.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(child: SelectableText(ht, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(child: SelectableText(ht1, style: textStyle))
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
                                      "assets/images/category/post/ht2.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht3.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht2, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(child: SelectableText(ht3, style: textStyle))
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
                                      "assets/images/category/post/ht4.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht5.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht4, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(child: SelectableText(ht5, style: textStyle))
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
                                      "assets/images/category/post/ht6.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht7.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht6, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(child: SelectableText(ht7, style: textStyle))
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
                                      "assets/images/category/post/ht8.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht9.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht8, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(child: SelectableText(ht9, style: textStyle))
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
                                      "assets/images/category/post/ht10.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht11.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht10, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(ht11, style: textStyle))
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
                                      "assets/images/category/post/ht12.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht13.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht12, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(ht13, style: textStyle))
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
                                      "assets/images/category/post/ht14.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht15.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht14, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(ht15, style: textStyle))
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
                                      "assets/images/category/post/ht16.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht17.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht16, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(ht17, style: textStyle))
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
                                      "assets/images/category/post/ht18.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht19.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht18, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(ht19, style: textStyle))
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
                                      "assets/images/category/post/ht20.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/ht21.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(ht20, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(ht21, style: textStyle))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(sob, style: titleStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr3.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr4.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp5, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(child: SelectableText(fp6, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/post/fr5.png"))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          SelectableText(fp7, style: textStyle)
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(sob, style: titleStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/wp26.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/wp27.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(wp31, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(wp32, style: textStyle))
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
                                      "assets/images/category/post/wp28.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/wp29.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(wp33, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(wp34, style: textStyle))
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
                                      "assets/images/category/post/wp30.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/wp31.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(wp35, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(wp36, style: textStyle))
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
                                      "assets/images/category/post/fr6.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr7.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp8, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(child: SelectableText(fp9, style: textStyle))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fp10, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fp11, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fp12, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr8.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr9.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp13, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp14, style: textStyle))
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
                                      "assets/images/category/post/fr10.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr11.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp15, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp16, style: textStyle))
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
                                      "assets/images/category/post/fr12.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr13.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp17, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp18, style: textStyle))
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
                                      "assets/images/category/post/fr14.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr15.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp19, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp20, style: textStyle))
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
                                      "assets/images/category/post/fr16.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr17.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp21, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp22, style: textStyle))
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
                                      "assets/images/category/post/fr18.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr19.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp23, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp24, style: textStyle))
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
                                      "assets/images/category/post/fr20.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr21.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp25, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp26, style: textStyle))
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
                                      "assets/images/category/post/fr22.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr23.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp27, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp28, style: textStyle))
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
                                      "assets/images/category/post/fr24.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr25.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp29, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp30, style: textStyle))
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
                                      "assets/images/category/post/fr26.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr27.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp31, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp32, style: textStyle))
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
                                      "assets/images/category/post/fr28.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr29.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp33, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp34, style: textStyle))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fp35, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(fp36, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr30.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr31.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp37, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp38, style: textStyle))
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
                                      "assets/images/category/post/fr32.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr33.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp39, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp40, style: textStyle))
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
                                      "assets/images/category/post/fr34.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr35.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp41, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp42, style: textStyle))
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
                                      "assets/images/category/post/fr36.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr37.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp43, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp44, style: textStyle))
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
                                      "assets/images/category/post/fr38.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr39.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp45, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp46, style: textStyle))
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
                                      "assets/images/category/post/fr40.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr41.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp47, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp48, style: textStyle))
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
                                      "assets/images/category/post/fr42.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr43.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp49, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp50, style: textStyle))
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
                                      "assets/images/category/post/fr44.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr45.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp51, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp52, style: textStyle))
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
                                      "assets/images/category/post/fr46.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr47.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp53, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp54, style: textStyle))
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
                                      "assets/images/category/post/fr48.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr49.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp55, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp56, style: textStyle))
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
                                      "assets/images/category/post/fr50.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr51.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp57, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp58, style: textStyle))
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
                                      "assets/images/category/post/fr52.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr53.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp59, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp60, style: textStyle))
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
                                      "assets/images/category/post/fr54.png"))),
                          SizedBox(width: 10),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/category/post/fr55.png")))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(
                              child: SelectableText(fp61, style: textStyle)),
                          SizedBox(width: 10),
                          Expanded(
                              child: SelectableText(fp62, style: textStyle))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/post/fr56.png"))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          SelectableText(fp63, style: textStyle)
                        ]))
              ])));
}
