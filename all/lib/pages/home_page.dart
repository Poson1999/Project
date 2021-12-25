import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              margin: const EdgeInsets.only(
                  left: 10, top: 10, right: 10),
              child: SizedBox(
                  width: double.infinity,
                  height: (MediaQuery.of(context).size.width - 20) * 203/390,
                  child: PageView(children: <Widget>[
                    Image.asset('assets/images/vp.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/vp1.png', fit: BoxFit.cover),
                    Image.asset('assets/images/vp2.png', fit: BoxFit.cover)
                  ]))),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: const Divider(color: Colors.black)),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text("Categories",
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
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/1.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/2.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/3.png'),
                                fit: BoxFit.fill)))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    SizedBox(
                        width: 90,
                        child: Text("Selection of Bamboo",
                            textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text("Plantation", textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text("Post Harvesting",
                            textAlign: TextAlign.center))
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
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/4.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/5.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/6.png'),
                                fit: BoxFit.fill)))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    SizedBox(
                        width: 90,
                        child: Text("Construction Sequence",
                            textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text("Joinery", textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text("Tools", textAlign: TextAlign.center))
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
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/7.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/8.png'),
                                fit: BoxFit.fill))),
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/9.png'),
                                fit: BoxFit.fill)))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    SizedBox(
                        width: 90,
                        child:
                            Text("Value Chain", textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text("Recourse Centre",
                            textAlign: TextAlign.center)),
                    SizedBox(
                        width: 90,
                        child: Text("World Bamboo Day",
                            textAlign: TextAlign.center))
                  ])),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: const Divider(color: Colors.black)),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text("DIY",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width / 2,
                  child: TextButton(
                      child: const Image(
                        image: AssetImage('assets/images/diy.png'),
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
              child: const Text("WEBINAR",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width / 2,
                  child: TextButton(
                      child: const Image(
                        image: AssetImage('assets/images/webinar.jpg'),
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
              child: const Text("SPONSORS",
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
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/nid_logo.jpg'),
                                fit: BoxFit.cover,
                                width: double.infinity))),
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image:
                                    AssetImage('assets/images/sabf_logo.jpg'),
                                fit: BoxFit.cover,
                                width: double.infinity))),
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: TextButton(
                            onPressed: () {},
                            child: const Image(
                                image: AssetImage('assets/images/ccu_logo.png'),
                                fit: BoxFit.cover,
                                width: double.infinity)))
                  ])),
        ]),
      ));
}
