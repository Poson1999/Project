import 'package:all/pages/category/resource/rc1.dart';
import 'package:all/pages/category/resource/rc2.dart';
import 'package:all/pages/category/resource/rc3.dart';
import 'package:all/pages/category/resource/rc4.dart';
import 'package:all/pages/category/resource/rc5.dart';
import 'package:all/pages/category/text.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';

class ResourceCenter extends StatelessWidget {
  const ResourceCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(rc),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(rc1, style: titleStyle, textAlign: TextAlign.center),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(rc2, style: subStyle, textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child:TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RC1()));
                  },
                  child: Image.asset("assets/images/category/resource/rc.png"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(rc3, style: subStyle, textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child:TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RC2()));
                },
                child: Image.asset("assets/images/category/resource/rc1.png"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(rc4, style: subStyle, textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child:TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RC3()));
                },
                child: Image.asset("assets/images/category/resource/rc2.png"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(rc5, style: subStyle, textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child:TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RC4()));
                },
                child: Image.asset("assets/images/category/resource/rc3.png"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:SelectableText(rc6, style: subStyle, textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child:TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RC5()));
                },
                child: Image.asset("assets/images/category/resource/rc4.png"),
              ),
            ),
          ],
        ),
      )
    );
  }
}