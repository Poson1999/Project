import 'package:all/pages/category/fab.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import '../text.dart';

class PreparationOfBamboo extends StatelessWidget {
  const PreparationOfBamboo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const FAB(pageName: cs2),
        appBar: AppBar(
          title: const Text(cs2),
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
                child:SelectableText(cs2, style: titleStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(pob1, style: textStyle),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image(
                    image: AssetImage("assets/images/category/construction/pob1.png"),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(pob2, style: imgText),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}