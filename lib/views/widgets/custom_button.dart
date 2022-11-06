import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          minimumSize: const Size(
            double.infinity,
            50,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
