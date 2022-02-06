import 'package:flutter/material.dart';

class MiddleTest extends StatelessWidget {
  const MiddleTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('Middle Level'), centerTitle: true,),
      body: const Center(child: Text('middle\nmiddle\nmiddle', style: TextStyle(fontSize: 50)))
  );
}