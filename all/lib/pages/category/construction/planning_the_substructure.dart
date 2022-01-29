import 'package:all/pages/category/fab.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import '../text.dart';

class PlanningTheSubstructure extends StatelessWidget {
  const PlanningTheSubstructure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const FAB(pageName: cs1),
        appBar: AppBar(
          title: const Text(cs1),
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
                child:SelectableText(cs1, style: titleStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(pts1, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(pts2, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(pts3, style: textStyle),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image(
                    image: AssetImage("assets/images/category/construction/pts1.png"),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child:SelectableText(pts4, style: imgText),
                      ),)
                ],
              ),
            ],
          ),
        )
    );
  }
}