import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoom_clone/controllers/jitsi_meet_controller.dart';
import 'package:zoom_clone/views/screens/video_call_screen.dart';
import 'package:zoom_clone/views/widgets/reusable_icon.dart';

class MeetingScreen extends StatefulWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  State<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {
  final JitsiMeetController _jitsiMeetController = JitsiMeetController();

  createNewMeeting() {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiMeetController.createMeeting(
        roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  joinMeeting() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const VideoCallScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableIcon(
                icon: Icons.videocam,
                text: 'New Meeting',
                onPressed: createNewMeeting,
              ),
              ReusableIcon(
                icon: Icons.add_box_rounded,
                text: 'Join Meeting',
                onPressed: joinMeeting,
              ),
              ReusableIcon(
                icon: Icons.calendar_today,
                text: 'Schedule',
                onPressed: () {
                  print('Schedule');
                },
              ),
              ReusableIcon(
                icon: Icons.arrow_upward,
                text: 'Share Screen',
                onPressed: () {
                  print('ShareScreen');
                },
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Create/Join Meeting Just with a Click',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
