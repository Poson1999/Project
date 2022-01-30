import 'package:all/pages/category/fab.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import '../text.dart';

class FramingSequence extends StatelessWidget {
  const FramingSequence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const FAB(pageName: cs3),
        appBar: AppBar(
          title: const Text(cs3),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cs3, style: titleStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(fs1, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(fs2, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(fs3, style: textStyle),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image(
                    image: AssetImage("assets/images/category/construction/fs1.png"),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:SelectableText(fs4, style: imgText),
                    ),)
                ],
              ),
            ],
          ),
        )
    );
  }
}