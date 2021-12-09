import 'package:flutter/material.dart';
import 'package:all/pages/primary_test.dart';
import 'package:all/pages/middle_test.dart';
import 'package:all/pages/advanced_test.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: const Text(
                    'Tests',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info_outline),
                  color: Colors.green,
                )
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: 250,
                height: 75,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrimaryTest())),
                  child: const Text(
                    'Primary',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: 250,
                height: 75,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MiddleTest())),
                  child: const Text(
                    'Middle',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: 250,
                height: 75,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdvancedTest())),
                  child: const Text(
                    'Advanced',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
