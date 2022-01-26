import 'package:all/pages/category/plantation/maintenance_activities.dart';
import 'package:all/pages/category/plantation/proposed_planning.dart';
import 'package:all/pages/category/text.dart';
import 'package:flutter/material.dart';

class NurseryManagement extends StatelessWidget {
  const NurseryManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(p1),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text(nur),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MaintenanceActivities()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text(nur1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProposedPlanning()));
            },
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Colors.black45),
        ],
      ),
    );
  }
}
