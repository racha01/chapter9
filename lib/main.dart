import 'package:chapter9/screen/index_screen.dart';
import 'package:chapter9/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: IndexScreen());
  }
}
