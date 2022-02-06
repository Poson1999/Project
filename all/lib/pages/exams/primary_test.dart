import 'package:flutter/material.dart';

class PrimaryTest extends StatelessWidget {
  const PrimaryTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Primary Level'), centerTitle: true,),
    body: const Center(child: Text('primary\nprimary\nprimary', style: TextStyle(fontSize: 50)))
  );
}