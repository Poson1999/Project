import 'package:flutter/material.dart';
import '../../constant.dart';
import '../fab.dart';
import '../text.dart';

class ModernJoiningTechnique extends StatelessWidget {
  const ModernJoiningTechnique({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: const FAB(pageName: jt3),
      appBar: AppBar(
        title: const Text(jt3),
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
                    child: SelectableText(mj, style: textStyle)),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/joinery/mj.png"))
                        ])),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                              image: AssetImage(
                                  "assets/images/category/joinery/mj1.png"))
                        ])),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SelectableText(mj1, style: textStyle)),
              ])));
}
