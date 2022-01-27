import 'package:all/pages/category/postHarvesting/methods_of_treatment.dart';
import 'package:all/pages/category/postHarvesting/why_treatment_preservation.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class PostHarvestingProcessing extends StatelessWidget {
  const PostHarvestingProcessing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ph),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            title: const Text(pp),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WhyTreatmentPreservation()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(pp1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MethodsOfTreatment()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
        ],
      ),
    );
  }
}