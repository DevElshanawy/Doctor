import 'Helper/cache_helper.dart';
import 'Screens/splash_view.dart';
import 'Screens/auth/screens/login.dart';
import 'Screens/barpage.dart';
import 'Screens/doctorpage.dart';
import 'Screens/doctors_pagas/doctoranfwazon.dart';
import 'Screens/doctors_pagas/doctoratfal.dart';
import 'Screens/doctors_pagas/doctorazam.dart';
import 'Screens/doctors_pagas/doctorbatna.dart';
import 'Screens/doctors_pagas/doctorcalb.dart';
import 'Screens/doctors_pagas/doctormokwasab.dart';
import 'Screens/doctors_pagas/doctornesawtawled.dart';
import 'Screens/doctors_pagas/doctorsgalda.dart';
import 'Screens/doctors_pagas/doctorasnan.dart';
import 'Screens/notifictions.dart';
import 'Screens/text_recognition.dart';
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
        "doctorpage": (context) => const Doctorpage(),
        "doctorgalda": (context) => const Doctorgalda(),
        "notifictions": (context) => const NotificationsPage(),
        "textrecognition": (context) => const TextRecognitionPage(),
        "doctorasnan": (context) => const Doctorasnan(),
        "doctorazam": (context) => const Doctorazam(),
        "doctormokwasab": (context) => const Doctormokwasab(),
        "doctoratfal": (context) => const Doctoratfal(),
        "doctornesawtawled": (context) => const Doctornesawtawled(),
        "doctorcalb": (context) => const Doctorcalb(),
        "doctoranfwazon": (context) => const Doctoranfwazon(),
        "doctorbatna": (context) => const Doctorbatna(),
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
