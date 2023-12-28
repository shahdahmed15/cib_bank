import 'package:cib_system/screens/Animated_card.dart';
import 'package:cib_system/screens/login.dart';
import 'package:cib_system/screens/profile.dart';
import 'package:cib_system/screens/requset.dart';
import 'package:cib_system/screens/signup.dart';
import 'package:cib_system/screens/transfer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
