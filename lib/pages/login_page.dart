import 'package:chat_me/components/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(height: 20),
            //welcome text
            Text(
              'Welcome to ChatMe',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            //email textfield
            CustomTextField(hintText: 'Email'),
            SizedBox(height: 10),
            //password textfield
            CustomTextField(hintText: 'Password'),
            SizedBox(height: 10),
            //login button
            //register button
          ],
        ),
      ),
    );
  }
}
