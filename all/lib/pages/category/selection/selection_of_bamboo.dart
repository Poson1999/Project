import 'package:all/pages/category/fab.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import '../text.dart';

class SelectionOfBamboo extends StatelessWidget {
  const SelectionOfBamboo({Key? key}) : super(key: key);

  final String pageName = sob;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FAB(pageName: pageName),
      appBar: AppBar(
        title: Text(pageName),
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
              child:SelectableText(sobTitle1, style: titleStyle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(sob1, style: textStyle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(sob2, style: textStyle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Image(
                image: AssetImage("assets/images/category/selection/sob_1.png"),
              )
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(sobTitle2, style: titleStyle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(sob3, style: textStyle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(sobTitle3, style: titleStyle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(sob4, style: textStyle),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:Image(
                  image: AssetImage("assets/images/category/selection/sob_2.png"),
                )
            ),
          ],
        ),
      )
    );
  }
}
