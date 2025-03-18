import 'package:chat_me/components/button.dart';
import 'package:chat_me/components/textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  final TextEditingController confirmpwController = TextEditingController();

  //tap togo to register page
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  //register method
  void register() {}

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
              'Let\'s create an account!',
              style: TextStyle(fontSize: 20, color: Colors.grey.shade500),
            ),
            SizedBox(height: 20),
            //email textfield
            CustomTextField(
              hintText: 'Email',
              obscureText: false,
              controller: emailController,
            ),
            SizedBox(height: 10),

            SizedBox(height: 10),
            //password textfield
            CustomTextField(
              hintText: 'Password',
              obscureText: true,
              controller: pwController,
            ),
            SizedBox(height: 20),

            //confirm password textfield
            CustomTextField(
              hintText: 'Confirm Password',
              obscureText: true,
              controller: confirmpwController,
            ),
            SizedBox(height: 40),
            //login button
            MyButton(text: "Register", onTap: register),

            //register button
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
