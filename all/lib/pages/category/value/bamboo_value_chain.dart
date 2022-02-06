import 'package:all/pages/category/fab.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import '../text.dart';

class BambooValueChain extends StatelessWidget {
  const BambooValueChain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const FAB(pageName: vc2),
        appBar: AppBar(
          title: const Text(vc2),
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
                child:SelectableText(bvc1, style: titleStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:SelectableText(bvc2, style: textStyle),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc1.png"),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc2.png"),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:SelectableText(bvc3, style: textStyle),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvc4, style: titleStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:SelectableText(bvc5, style: textStyle),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc3.png"),
                        )
                    ),
                  ),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image(
                    image: AssetImage("assets/images/category/value/bvc4.png"),
                  )
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvc6, style: titleStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:SelectableText(bvc7, style: textStyle),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc5.png"),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc6.png"),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:SelectableText(bvc8, style: textStyle),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvc9, style: titleStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:SelectableText(bvc10, style: textStyle),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc7.png"),
                        )
                    ),
                  ),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image(
                    image: AssetImage("assets/images/category/value/bvc8.png"),
                  )
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvc11, style: titleStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:SelectableText(bvc12, style: textStyle),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc9.png"),
                        )
                    ),
                  ),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image(
                    image: AssetImage("assets/images/category/value/bvc10.png"),
                  )
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvc13, style: titleStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc11-1.png"),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc11-2.png"),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc11-3.png"),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc11-4.png"),
                        )
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvc14, style: titleStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc12-1.png"),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc12-2.png"),
                        )
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvc15, style: titleStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc13-1.png"),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc13-2.png"),
                        )
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child:SelectableText(bvc16, style: titleStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc14-1.png"),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Image(
                          image: AssetImage("assets/images/category/value/bvc14-2.png"),
                        )
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}