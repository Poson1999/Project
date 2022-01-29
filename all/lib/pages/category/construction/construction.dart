import 'package:all/pages/category/construction/planning_the_substructure.dart';
import 'package:all/pages/category/construction/preparation_of_bamboo.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class Construction extends StatelessWidget {
  const Construction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(csTitle),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            title: const Text(cs1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PlanningTheSubstructure()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(cs2),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PreparationOfBamboo()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(cs3),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const Harvesting()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(cs4),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const Harvesting()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
        ],
      ),
    );
  }
}