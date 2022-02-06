import 'package:all/pages/category/construction/construction.dart';
import 'package:all/pages/category/joinery/joinery.dart';
import 'package:all/pages/category/plantation/plantation.dart';
import 'package:all/pages/category/postHarvesting/post_harvesting.dart';
import 'package:all/pages/category/resource/resource_center.dart';
import 'package:all/pages/category/selection/selection.dart';
import 'package:all/pages/category/text.dart';
import 'package:all/pages/category/tools/tools.dart';
import 'package:all/pages/category/value/value_chain.dart';
import 'package:all/pages/diy/diy.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: SizedBox(
                  width: double.infinity,
                  height: (MediaQuery.of(context).size.width - 20) * 203 / 390,
                  child: PageView(children: <Widget>[
                    Image.asset('assets/images/homepage/vp.jpg',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/homepage/vp1.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/homepage/vp2.png',
                        fit: BoxFit.cover)
                  ]))),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: const Divider(color: Colors.black)),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(home12,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          Container(
              margin: const EdgeInsets.only(left: 30, top: 10, right: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Selection())),
                            child: const Image(
                                image:
                                    AssetImage('assets/images/homepage/1.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Plantation())),
                            child: const Image(
                                image:
                                    AssetImage('assets/images/homepage/2.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PostHarvesting())),
                            child: const Image(
                                image:
                                    AssetImage('assets/images/homepage/3.png'),
                                fit: BoxFit.fill)))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    SizedBox(
                        width: 90,
                        child: Text(home, textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text(home1, textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text(home2, textAlign: TextAlign.center))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, top: 10, right: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Construction())),
                            child: const Image(
                                image:
                                    AssetImage('assets/images/homepage/4.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Joinery())),
                            child: const Image(
                                image:
                                    AssetImage('assets/images/homepage/5.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Tools())),
                            child: const Image(
                                image:
                                    AssetImage('assets/images/homepage/6.png'),
                                fit: BoxFit.fill)))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    SizedBox(
                        width: 90,
                        child: Text(home3, textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text(home4, textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text(home5, textAlign: TextAlign.center))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, top: 10, right: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ValueChain())),
                            child: const Image(
                                image:
                                    AssetImage('assets/images/homepage/7.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ResourceCenter())),
                            child: const Image(
                                image:
                                    AssetImage('assets/images/homepage/8.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => Scaffold(
                                      appBar: AppBar(
                                        title: const Text(home8),
                                      ),
                                      body: const WebView(
                                          initialUrl:
                                              'https://worldbambooday.in/'))));
                            },
                            child: const Image(
                                image:
                                    AssetImage('assets/images/homepage/9.png'),
                                fit: BoxFit.fill)))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    SizedBox(
                        width: 90,
                        child: Text(home6, textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text(home7, textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text(home8, textAlign: TextAlign.center))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: const Divider(color: Colors.black)),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(home9,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width / 2,
                  child: TextButton(
                      child: const Image(
                        image: AssetImage('assets/images/homepage/diy.png'),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DIY()))))),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: const Divider(color: Colors.black)),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(home10,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width / 2,
                  child: TextButton(
                      child: const Image(
                        image: AssetImage('assets/images/homepage/webinar.jpg'),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onPressed: () {}))),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: const Divider(color: Colors.black)),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(home11,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          Container(
              margin: const EdgeInsets.only(
                  left: 30, top: 10, right: 30, bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => Scaffold(
                                      appBar: AppBar(
                                        title: const Text(sponsor),
                                      ),
                                      body: const WebView(
                                          initialUrl: sponsorUrl))));
                            },
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/homepage/nid_logo.jpg'),
                                fit: BoxFit.cover,
                                width: double.infinity))),
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => Scaffold(
                                      appBar: AppBar(
                                        title: const Text(sponsor1),
                                      ),
                                      body: const WebView(
                                          javascriptMode:
                                              JavascriptMode.unrestricted,
                                          initialUrl: sponsorUrl1))));
                            },
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/homepage/sabf_logo.jpg'),
                                fit: BoxFit.cover,
                                width: double.infinity))),
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => Scaffold(
                                      appBar: AppBar(
                                        title: const Text(sponsor2),
                                      ),
                                      body: const WebView(
                                          debuggingEnabled: true,
                                          zoomEnabled: true,
                                          initialUrl: sponsorUrl2))));
                            },
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/homepage/ccu_logo.png'),
                                fit: BoxFit.cover,
                                width: double.infinity)))
                  ])),
        ]),
      ));
}
