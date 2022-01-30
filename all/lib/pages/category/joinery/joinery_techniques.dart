import 'package:all/pages/category/joinery/angle_joints_for_trusses_joints.dart';
import 'package:all/pages/category/joinery/modern_joining_technique.dart';
import 'package:all/pages/category/joinery/orthogonal_joints.dart';
import 'package:all/pages/category/joinery/spliced_joints.dart';
import 'package:all/pages/category/joinery/useful_techniques.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class JoineryTechniques extends StatelessWidget {
  const JoineryTechniques({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(j1),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          ListTile(
              title: const Text(jt),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplicedJoints()));
              },
              trailing: const Icon(Icons.keyboard_arrow_right)),
          const Divider(color: Colors.black45),
          ListTile(
              title: const Text(jt1),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrthogonalJoints()));
              },
              trailing: const Icon(Icons.keyboard_arrow_right)),
          const Divider(color: Colors.black45),
          ListTile(
              title: const Text(jt2),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AngleJointsForTrussesJoints()));
              },
              trailing: const Icon(Icons.keyboard_arrow_right)),
          const Divider(color: Colors.black45),
          ListTile(
              title: const Text(jt3),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ModernJoiningTechnique()));
              },
              trailing: const Icon(Icons.keyboard_arrow_right)),
          const Divider(color: Colors.black45),
          ListTile(
              title: const Text(jt4),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UsefulTechniques()));
              },
              trailing: const Icon(Icons.keyboard_arrow_right)),
          const Divider(color: Colors.black45)
        ]));
  }
}
