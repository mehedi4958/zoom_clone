import 'package:flutter/material.dart';
import 'package:zoom_clone/views/widgets/reusable_icon.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ReusableIcon(
            icon: Icons.videocam,
          ),
          ReusableIcon(
            icon: Icons.videocam,
          ),
          ReusableIcon(
            icon: Icons.videocam,
          ),
          ReusableIcon(
            icon: Icons.videocam,
          ),
        ],
      ),
    );
  }
}
