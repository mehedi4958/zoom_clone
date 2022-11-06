import 'package:flutter/material.dart';
import 'package:zoom_clone/views/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or Join a Meeting',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Image.asset(
              'assets/images/onboarding.jpg',
            ),
          ),
          const CustomButton(
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
