import 'package:chat/component/my_button.dart';
import 'package:chat/component/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // Email and Ps controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _psController = TextEditingController();

  // Login method
  void login() {}
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 50),

            // Welcom back message
            Text(
              'Welcom back, you have been missed!',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // Email textfirld
            MyTextField(
              hinText: 'Email',
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(height: 10),

            // Ps textfirld
            MyTextField(
              hinText: 'Password',
              obscureText: true,
              controller: _psController,
            ),

            const SizedBox(height: 25),

            // Login Button
            MyButton(
              text: 'Login',
              onTap: login,
            ),
            // register now
          ],
        ),
      ),
    );
  }
}
