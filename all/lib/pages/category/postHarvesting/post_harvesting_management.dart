import 'package:all/pages/category/postHarvesting/basics_working_method.dart';
import 'package:all/pages/category/postHarvesting/dying.dart';
import 'package:all/pages/category/postHarvesting/finishing_method.dart';
import 'package:all/pages/category/postHarvesting/furniture_products.dart';
import 'package:all/pages/category/postHarvesting/weaving_and_woven_products.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class PostHarvestingManagement extends StatelessWidget {
  const PostHarvestingManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ph1),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          ListTile(
            title: const Text(phm),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BasicsWorkingMethod()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(phm1),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Dying()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(phm2),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FinishingMethod()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(phm3),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WeavingAndWovenProducts()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(phm4),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FurnitureProducts()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45)
        ]));
  }
}
