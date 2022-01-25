import 'package:all/pages/category/plantation/non_conventional.dart';
import 'package:all/pages/category/plantation/conventional.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class PlantationMethod extends StatelessWidget {
  const PlantationMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(p),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            title: const Text(pm),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NonConventional()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(pm1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Conventional()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
        ],
      ),
    );
  }
}