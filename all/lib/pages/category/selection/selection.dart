import 'package:all/pages/category/selection/selection_of_bamboo.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class Selection extends StatelessWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(selectionTitle),
        centerTitle: true,
      ),
      body: ListView(
          children: <Widget> [
            ListTile(
              title: const Text(sob),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelectionOfBamboo()));
              },
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            const Divider(color: Colors.black45),
            ListTile(
              title: const Text(selectionTitle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelectionOfBamboo()));
              },
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            const Divider(color: Colors.black45)
          ],
      ),
    );
  }
}