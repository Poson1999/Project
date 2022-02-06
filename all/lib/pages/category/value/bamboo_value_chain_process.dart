import 'package:all/pages/category/fab.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import '../text.dart';

class BambooValueChainProcess extends StatelessWidget {
  const BambooValueChainProcess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const FAB(pageName: vc3),
        appBar: AppBar(
          title: const Text(vc3),
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
                child:SelectableText(bvcp1, style: titleStyle),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:Image(
                  image: AssetImage("assets/images/category/value/bvcp1.png"),
                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvcp2, style: textStyle),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvcp3, style: titleStyle),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child:Image(
                    image: AssetImage("assets/images/category/value/bvcp2.png"),
                  )
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvcp4, style: titleStyle),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvcp5, style: textStyle),
              ),
            ],
          ),
        )
    );
  }
}