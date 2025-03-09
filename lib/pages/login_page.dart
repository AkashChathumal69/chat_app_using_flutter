import 'package:chat_me/components/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.message, size: 100, color: Colors.grey.shade500),
            SizedBox(height: 20),
            //welcome text
            Text(
              'Welcome to ChatMe!',
              style: TextStyle(fontSize: 20, color: Colors.grey.shade500),
            ),
            SizedBox(height: 20),
            //email textfield
            CustomTextField(hintText: 'Email', obscureText: false),
            SizedBox(height: 10),

            SizedBox(height: 10),
            //password textfield
            CustomTextField(hintText: 'Password', obscureText: false),
            SizedBox(height: 10),
            //login button

            //register button
          ],
        ),
      ),
    );
  }
}
