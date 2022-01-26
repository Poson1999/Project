import 'package:all/pages/category/plantation/clum_harvesting_handling.dart';
import 'package:all/pages/category/plantation/shoot_harvesting_handling.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class Harvesting extends StatelessWidget {
  const Harvesting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(p2),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            title: const Text(har),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ClumHarvestingHandling()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(har1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ShootHarvestingHandling()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
        ],
      ),
    );
  }
}