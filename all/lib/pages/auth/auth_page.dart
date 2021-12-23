import 'package:all/pages/auth/login_form.dart';/*
import 'package:all/pages/auth/sign_up_form.dart';
import 'package:all/pages/constant.dart';*/
import 'package:flutter/material.dart';

// 驗證頁面(登入/註冊)
class AuthPage extends StatefulWidget{
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>{

  // 判斷現在是否顯示的是註冊頁面
  //bool _isShowSignUp = false;

  @override
  Widget build(BuildContext context) => /*{
    final _screenSize = MediaQuery.of(context).size;

    return */const Scaffold(
      body: LoginForm()/*Stack(
        children: [
          // Login part
          AnimatedPositioned(
            duration: defaultDuration,
            width: _screenSize.width * 0.88,
            height: _screenSize.height,
            left: _isShowSignUp ? -_screenSize.width * 0.76 : 0 ,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  _isShowSignUp = false ;
                });
              },
              child: Container(
                color: login_bg,
                child: const LoginForm(),
              ),
            ),
          ),
          // Sign up part
          AnimatedPositioned(
            duration: defaultDuration,
            width: _screenSize.width * 0.88,
            height: _screenSize.height,
            left: _isShowSignUp ? _screenSize.width * 0.12 : _screenSize.width * 0.88,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  _isShowSignUp = true ;
                });
              },
              child: Container(
                color: signup_bg,
                child: const SignUpForm(),
              ),
            ),
          )
        ],
      ),*/
    );
  }