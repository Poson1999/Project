import 'dart:io';

import 'package:all/class/user.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:all/pages/constant.dart';

class SignInUp extends StatefulWidget {
  const SignInUp({Key? key}) : super(key: key);

  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<SignInUp> {
  // 判斷是否載入中
  bool isLoading = true;

  //Sign in controllers
  TextEditingController inEmailController = TextEditingController();
  TextEditingController inPassController = TextEditingController();

  //Sign up controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  //登入方法
  void login() async {
    // 顯示載入資料中
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Loading...')),
    );

    var url = serverDomain + "/phpformobile/login.php";
    var data = {
      "email": inEmailController.text,
      "password": inPassController.text
    };

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      if (jsonData == "false") {
        // 查無帳號
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
        Fluttertoast.showToast(
          msg: "No account exist!",
        );
      } else {
        // 存入使用者資料
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('isLoggedIn', true);

        User newUser = User.fromJson(jsonData);
        prefs.setString('UserId', newUser.id);
        prefs.setString('UserName', newUser.name);
        prefs.setString('UserEmail', newUser.email);
        prefs.setString('UserPassword', newUser.password);
        prefs.setString('UserIdCode', newUser.identificationCode);
        prefs.setString('Photo', newUser.photo);

        String result =
            "獲得資料: " + newUser.id + ", " + newUser.name + ", " + newUser.email;
        debugPrint(result);

        // 檢查密碼是否一致
        if (newUser.password == inPassController.text) {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          Navigator.of(context).pushNamedAndRemoveUntil(
              '/main', (Route<dynamic> route) => false);
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          Fluttertoast.showToast(msg: "password incorrect!");
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  //登入方法
  void signUp() async {
    var url =
        "https://project-ccu-2021.000webhostapp.com/phpformobile/signup.php";
    var data = {
      "name": nameController.text,
      "email": emailController.text,
      "password": passController.text
    };

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      Fluttertoast.showToast(msg: jsonData.toString());
    } catch (e) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final _tapPages = <Widget>[
      //Sign in
      Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.13),
          child: Form(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                const Spacer(flex: 1),
                TextFormField(
                    controller: inEmailController,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Email Address',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelStyle: TextStyle(fontSize: 20))),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: TextFormField(
                        controller: inPassController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            labelStyle: TextStyle(fontSize: 20)))),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: login, child: const Text("Login", style: TextStyle(color: Colors.white)), style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF4EB857)))
                    ]),
                const Spacer(flex: 1)
              ]))),
      //Sign up
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.13),
        child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 50),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      fillColor: Colors.white,
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 20))),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          fillColor: Colors.white,
                          labelText: 'Email Address',
                          labelStyle: TextStyle(fontSize: 20)))),
              TextFormField(
                  controller: passController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelStyle: TextStyle(fontSize: 20))),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: TextFormField(
                      controller: confirmPassController,
                      decoration: const InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          fillColor: Colors.white,
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(fontSize: 20)))),
                  ElevatedButton(onPressed: () {
                    if (passController.text == confirmPassController.text) {
                      signUp();
                    } else {
                      Fluttertoast.showToast(
                          msg: "Passwords are not the same!");
                    }
                  }, child: const Text("Sign up", style: TextStyle(color: Colors.white)), style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF4EB857)))
            ])),
      )
    ];
    const _tabs = <Tab>[
      Tab(icon: Icon(Icons.login), text: 'Sign in'),
      Tab(icon: Icon(Icons.upcoming), text: 'Sign up')
    ];
    return DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
            appBar: AppBar(title: const TabBar(tabs: _tabs)),
            body: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.cover),
              ),
              child: TabBarView(children: _tapPages),
            )));
  }
}
