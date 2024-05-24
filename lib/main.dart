import 'package:doctor_appp/Screens/Splash_View.dart';
import 'package:doctor_appp/Screens/doctorpage.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctoranfwazon.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctoratfal.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorazam.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorbatna.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorcalb.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctormokwasab.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctornesawtawled.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorsgalda.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorasnan.dart';
import 'package:doctor_appp/Screens/notifictions.dart';
import 'package:doctor_appp/Screens/text_recognition.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

late Size mq;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        "doctorgalda": (context) => doctorgalda(),
        "notifictions": (context) => NotificationsPage(),
        "textrecognition": (context) => TextRecognitionPage(),
        "doctorasnan": (context) => doctorasnan(),
        "doctorazam": (context) => doctorazam(),
        "doctormokwasab": (context) => doctormokwasab(),
        "doctoratfal": (context) => doctoratfal(),
        "doctornesawtawled": (context) => doctornesawtawled(),
        "doctorcalb": (context) => doctorcalb(),
        "doctoranfwazon": (context) => doctoranfwazon(),
        "doctorbatna": (context) => doctorbatna(),
        
      },
      home: const SplashView(),
    );
  }
}
