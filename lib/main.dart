import 'package:doctor_appp/Screens/Splash_View.dart';
import 'package:doctor_appp/Screens/doctorpage.dart';
import 'package:doctor_appp/Screens/doctors_screen.dart';
import 'package:doctor_appp/Screens/notifictions.dart';
import 'package:doctor_appp/Screens/text_recognition.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

late Size mq;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      routes: {
        "doctorpage": (context) => doctorpage(),
        "doctorsscreen": (context) => doctors(),
        "notifictions": (context) => NotificationsPage(),
        "textrecognition": (context) => TextRecognitionPage(),
      },
      home: const SplashView(),
    );
  }
}
