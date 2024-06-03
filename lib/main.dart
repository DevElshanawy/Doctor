import 'package:doctor_appp/Helper/cache_helper.dart';
import 'package:doctor_appp/Screens/blood_and_thalel_bage/asha.dart';
import 'package:doctor_appp/Screens/blood_and_thalel_bage/blood.dart';
import 'package:doctor_appp/Screens/blood_and_thalel_bage/cala.dart';
import 'package:doctor_appp/Screens/blood_and_thalel_bage/thalel.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorayon.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorcala.dart';
import 'package:doctor_appp/Screens/Splash_View.dart';
import 'package:doctor_appp/Screens/auth/screens/login.dart';
import 'package:doctor_appp/Screens/home_bage/barpage.dart';
import 'package:doctor_appp/Screens/home_bage/blood_bages.dart';
import 'package:doctor_appp/Screens/home_bage/doctorpage.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctoranfwazon.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctoratfal.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorazam.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorbatna.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorcalb.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorgraha.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctormokwasab.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctornafsy.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctornesawtawled.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorsgalda.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctorasnan.dart';
import 'package:doctor_appp/Screens/doctors_pagas/doctortaksas.dart';
import 'package:doctor_appp/Screens/home_bage/homepage.dart';
import 'package:doctor_appp/Screens/home_bage/notifictions.dart';
import 'package:doctor_appp/Screens/text_recognition.dart';
import 'package:doctor_appp/Screens/home_bage/thalel_bage.dart';
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
        "homepage": (context) => Homepage(),
        "doctorpage": (context) => const doctorpage(),
        "bloodpage": (context) => const bloodpage(),
        "thalelpage": (context) => const thalelpage(),
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
        "doctormafsy": (context) => const doctornafsy(),
        "doctortaksas": (context) => const doctortaksas(),
        "doctorgraha": (context) => const doctorgraha(),
        "doctorcala": (context) => const doctorcala(),
        "doctorayon": (context) => const doctorayon(),
        "thalel": (context) => const thalel_bage(),
        "blood": (context) => const blood_bage(),
        "cala": (context) => const cala_bage(),
        "asha": (context) => const asha_bage(),
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
