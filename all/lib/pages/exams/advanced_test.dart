import 'package:flutter/material.dart';

class AdvancedTest extends StatelessWidget {
  const AdvancedTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('Advanced Level'), centerTitle: true,),
      body: const Center(child: Text('advanced\nadvanced\nadvanced', style: TextStyle(fontSize: 50)))
  );
}