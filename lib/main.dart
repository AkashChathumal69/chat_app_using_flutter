// import 'package:chat_me/pages/login_page.dart';
import 'package:chat_me/auth/login_or_register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: ThemeData.light(),
    );
  }
}
