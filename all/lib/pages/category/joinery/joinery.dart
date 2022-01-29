import 'package:all/pages/category/joinery/basic_principle.dart';
import 'package:all/pages/category/joinery/joinery_techniques.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class Joinery extends StatelessWidget {
  const Joinery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(j0),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          ListTile(
            title: const Text(j),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BasicPrinciple()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(j1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const JoineryTechniques()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45)
        ]));
  }
}
