import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class ReusableIcon extends StatelessWidget {
  const ReusableIcon({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 50,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black87.withOpacity(0.7),
            ),
          ]),
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
