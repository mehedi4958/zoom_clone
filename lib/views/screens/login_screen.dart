import 'package:flutter/material.dart';
import 'package:zoom_clone/controllers/auth_controller.dart';
import 'package:zoom_clone/views/screens/home_screen.dart';
import 'package:zoom_clone/views/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final AuthController _authController = AuthController();

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
          CustomButton(
            text: 'Google Sign in',
            onPressed: () {
              _authController.signInWithGoogle();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const HomeScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
