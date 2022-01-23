import 'package:all/pages/category/fab.dart';
import 'package:flutter/material.dart';

import '../text.dart';

class SelectionOfBamboo extends StatelessWidget {
  const SelectionOfBamboo({Key? key}) : super(key: key);

  final String pageName = sob;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FAB(pageName: pageName),
      appBar: AppBar(
        title: Text(pageName),
        centerTitle: true,
      ),
      body: const Center(child: SelectableText("Content A", style: TextStyle(fontSize: 60))),
    );
  }
}
