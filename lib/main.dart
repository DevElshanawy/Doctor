import 'package:doctor_appp/Helper/cache_helper.dart';
import 'package:doctor_appp/Screens/Splash_View.dart';
import 'package:doctor_appp/Screens/auth/screens/login.dart';
import 'package:doctor_appp/Screens/barpage.dart';
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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

late Size mq;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      routes: {
        "doctorpage": (context) => const doctorpage(),
        "doctorgalda": (context) => const doctorgalda(),
        "notifictions": (context) => const NotificationsPage(),
        "textrecognition": (context) => const TextRecognitionPage(),
        "doctorasnan": (context) => const doctorasnan(),
        "doctorazam": (context) => const doctorazam(),
        "doctormokwasab": (context) => const doctormokwasab(),
        "doctoratfal": (context) => const doctoratfal(),
        "doctornesawtawled": (context) => const doctornesawtawled(),
        "doctorcalb": (context) => const doctorcalb(),
        "doctoranfwazon": (context) => const doctoranfwazon(),
        "doctorbatna": (context) => const doctorbatna(),
      },
      home: CacheHelper().getData(key: 'isOnBoardingVisited') ?? false
          ? FirebaseAuth.instance.currentUser == null
              ? const Login()
              : FirebaseAuth.instance.currentUser!.emailVerified == true
                  ? const BarPage()
                  : const Login()
          : const SplashView(),
    );
  }
}
