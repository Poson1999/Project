import 'package:all/pages/category/fab.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import '../text.dart';

class PlasteringAndFinishing extends StatelessWidget {
  const PlasteringAndFinishing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const FAB(pageName: cs4),
        appBar: AppBar(
          title: const Text(cs4),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cs4, style: titleStyle),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(paf1, style: textStyle),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(paf2, style: textStyle),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image(
                    image: AssetImage("assets/images/category/construction/paf1.png"),
                  )
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(paf3, style: textStyle),
              ),
            ],
          ),
        )
    );
  }
}