import 'package:flutter/material.dart';
import 'post.dart';

const TextStyle author = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const TextStyle time = TextStyle(
  color: Colors.black,
  fontSize: 10,
);

const TextStyle content = TextStyle(
  color: Colors.black,
  fontSize: 20,
);

List<Post> posts = [
  Post('test content', 'https://project-ccu-2021.000webhostapp.com/pic/user/default.png', 'Tester', 'https://project-ccu-2021.000webhostapp.com/pic/user/1.png', '2/23/2022\n21:17'),
  Post('test content2', 'https://project-ccu-2021.000webhostapp.com/pic/user/1.png', 'Poppy', 'https://project-ccu-2021.000webhostapp.com/pic/user/default.png', '2/23/2022\n22:17'),
  Post('', '', '', '', ''),
  Post('', '', '', '', ''),
  Post('', '', '', '', ''),
  Post('', '', '', '', ''),
  Post('', '', '', '', ''),
  Post('', '', '', '', ''),
  Post('', '', '', '', '')
];
