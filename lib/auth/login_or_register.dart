import 'package:chat_me/pages/login_page.dart';
import 'package:chat_me/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initiate the login page
  bool showLoignPage = true;
  //toggle between login and register page
  void togglePage() {
    setState(() {
      showLoignPage = !showLoignPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoignPage) {
      return LoginPage(onTap: togglePage);
    } else {
      return RegisterPage(onTap: togglePage);
    }
  }
}
