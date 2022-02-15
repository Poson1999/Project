import 'package:flutter/material.dart';
import '../category/text.dart';
import '../constant.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text(au0),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 20, right: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Expanded(child: Text(au, style: textStyle)),
                          SizedBox(width: 5),
                          Expanded(
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/homepage/au.png")))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(au1, style: textStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(au2, style: titleStyle)),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(au3, style: textStyle))
              ])));
}
