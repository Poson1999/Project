import 'package:all/class/user.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:all/pages/constant.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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

    var url =
        "https://project-ccu-2021.000webhostapp.com/phpformobile/login.php";
    var data = {"email": inEmailController.text, "password": inPassController.text};

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
        prefs.setString('PhotoFlag', newUser.photoFlag);

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

  @override
  Widget build(BuildContext context) {
    final _tapPages = <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.13),
        child: Form(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(flex: 1),
          TextFormField(
              controller: inEmailController,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  labelText: 'Email Address',
                  labelStyle: TextStyle(fontSize: 20))),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: defpaultPadding),
              child: TextFormField(
                  controller: inPassController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white38,
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 20)))),
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            TextButton(
                onPressed: login,
                child: const Text("登入")),
            TextButton(
                onPressed: () {},
                child:
                    const Text("獲取資料")),
            TextButton(
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    '/main', (Route<dynamic> route) => false),
                child:
                    const Text("直接轉跳"))
          ]),
          const Spacer(flex: 1)
        ])),
      ),
      Padding(
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
                  controller: confirmPassController,
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
      )
    ];
    const _tabs = <Tab>[
      Tab(
          icon: Icon(Icons.login),
          text: 'Sign in'),
      Tab(
          icon: Icon(Icons.upcoming),
          text: 'Sign up')
    ];
    return DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: /*const Text('Sign in / Sign up'),
            bottom: */const TabBar(
              tabs: _tabs,
            ),
          ),
            body: TabBarView(
          children: _tapPages,
        )));
  }
/*Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Spacer(flex: 1),
        TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white38,
                labelText: 'Email Address',
                labelStyle: TextStyle(fontSize: 20))),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: defpaultPadding),
            child: TextFormField(
                controller: passController,
                obscureText: true,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white38,
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 20)))),
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          TextButton(
              onPressed: login,
              child: const Text("登入", style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () {},
              child: const Text("獲取資料", style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  '/main', (Route<dynamic> route) => false),
              child: const Text("直接轉跳", style: TextStyle(color: Colors.white)))
        ]),
        const Spacer(flex: 1)
      ])));*/
}
