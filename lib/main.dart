import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/controllers/auth_controller.dart';
import 'package:zoom_clone/firebase_options.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/views/screens/home_screen.dart';
import 'package:zoom_clone/views/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: StreamBuilder(
        stream: AuthController().authChanges,
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapShot.hasData) {
            return const HomeScreen();
          }
          return LoginScreen();
        },
      ),
    );
  }
}
