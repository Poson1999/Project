import 'package:all/pages/category/text.dart';
import 'package:all/pages/category/tools/hand_tools.dart';
import 'package:all/pages/category/tools/machine_tools.dart';
import 'package:flutter/material.dart';

class Tools extends StatelessWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(t0),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            title: const Text(t),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HandTools()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(t1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MachineTools()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
        ],
      ),
    );
  }
}