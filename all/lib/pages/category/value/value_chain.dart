import 'package:all/pages/category/text.dart';
import 'package:all/pages/category/value/bamboo_distribution.dart';
import 'package:all/pages/category/value/bamboo_value_chain.dart';
import 'package:all/pages/category/value/bamboo_value_chain_process.dart';
import 'package:flutter/material.dart';

class ValueChain extends StatelessWidget {
  const ValueChain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(vcTitle),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            title: const Text(vc1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BambooDistribution()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(vc2),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BambooValueChain()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(vc3),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BambooValueChainProcess()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45)
        ],
      ),
    );
  }
}