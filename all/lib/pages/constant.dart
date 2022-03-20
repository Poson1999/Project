import 'package:flutter/material.dart';

// 一些畫面的參數設定，最好統一放這邊

// auth-page
const Color signInBg = Color(0xFF00C470);
const Color signUpBg = Color(0xFF000A54);
const Color authTextField = Colors.white38;

const double defaultPadding = 16.0;
const Duration defaultDuration = Duration(milliseconds: 300);

// category 文字樣式

const TextStyle titleStyle = TextStyle(
  color: Color(0xFF306F33),
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const TextStyle subStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 18
);

const TextStyle imgText = TextStyle(
  color: Color(0xFF306F33),
  fontSize: 17,
);

const TextStyle textStyle = TextStyle(
  color: Colors.black54,
  fontSize: 17,
  height: 1.35,
);

ButtonStyle option = ElevatedButton.styleFrom(
  primary: Colors.white,
);

ButtonStyle selected = ElevatedButton.styleFrom(
  primary: const Color(0xFF4EB857),
);