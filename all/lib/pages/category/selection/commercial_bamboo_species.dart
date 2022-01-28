import 'package:all/pages/category/fab.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import '../text.dart';

class CommericalBambooSpecies extends StatelessWidget {
  const CommericalBambooSpecies({Key? key}) : super(key: key);

  final String pageName = cbs;

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
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbsTitle1, style: titleStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs1, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs2, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs3, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_1.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs4, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs5, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs6, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs7, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs8, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs9, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs10, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs11, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs12, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_2.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs13, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs14, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs15, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs16, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs17, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs18, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs19, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs20, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs21, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_3.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs22, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs23, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs24, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs25, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs26, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs27, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs28, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs29, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs30, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_4.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs31, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs32, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs33, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs34, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs35, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs36, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs37, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs38, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs39, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_5.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs40, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs41, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs42, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs43, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs44, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs45, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs46, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs47, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs48, style: subStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs49, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs50, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_6.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs51, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs52, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs53, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs54, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs55, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs56, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs57, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs58, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs59, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_7.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs60, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs61, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs62, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs63, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs64, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs65, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs66, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs67, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs68, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_8.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs69, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs70, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs71, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs72, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs73, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs74, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs75, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs76, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs77, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_9.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs78, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs79, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs80, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs81, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs82, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs83, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs84, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs85, style: textStyle),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs86, style: subStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(
                        image: AssetImage("assets/images/category/selection/cbs_10.png"),
                      )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs87, style: textStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs88, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs89, style: textStyle),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs90, style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:SelectableText(cbs91, style: textStyle),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(cbs92, style: textStyle),
              ),
            ],
          ),
        )
    );
  }
}