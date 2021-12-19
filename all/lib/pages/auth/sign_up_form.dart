import 'package:flutter/material.dart';
import 'package:all/pages/constant.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();

}

class _SignUpFormState extends State<SignUpForm> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white38,
                labelText: 'Name',
                labelStyle: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defpaultPadding),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  labelText: 'Email Address',
                  labelStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            TextFormField(
              controller: passController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white38,
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defpaultPadding),
              child: TextFormField(
                controller: confirmpassController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                  },
                  child: const Text(
                    "註冊",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}