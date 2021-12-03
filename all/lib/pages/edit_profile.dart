import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Edit Profile'),
      centerTitle: true,
    ),
    body: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          child: ClipOval(
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/dog.png', fit: BoxFit.cover)
              )
          )
        ),
        const Divider(color: Colors.green),
        ListTile(
            title: const Text('Change Photo'),
            leading: const Icon(Icons.photo, color: Colors.green),
            onTap: () { }
        ),
        const Divider(color: Colors.green),
        ListTile(
            title: const Text('Change Password'),
            leading: const Icon(Icons.password, color: Colors.green),
            onTap: () { }
        ),
        const Divider(color: Colors.green),
        ListTile(
            title: const Text('Delete Account'),
            leading: const Icon(Icons.warning, color: Colors.red),
            onTap: () { }
        ),
        const Divider(color: Colors.green),
      ],
    ),
  );
}
