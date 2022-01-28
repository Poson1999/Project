import 'package:all/pages/category/postHarvesting/post_harvesting_management.dart';
import 'package:all/pages/category/postHarvesting/post_harvesting_processing.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class PostHarvesting extends StatelessWidget {
  const PostHarvesting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ph0),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            title: const Text(ph),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PostHarvestingProcessing()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(ph1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PostHarvestingManagement()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
        ],
      ),
    );
  }
}