// ignore_for_file: file_names

import 'package:doctor_appp/Helper/Splash_Texts.dart';
import 'package:doctor_appp/Shared/Splash_background.dart';
import 'package:doctor_appp/Widgets/Splash_View_Body.dart';
import 'package:doctor_appp/main.dart';
import 'package:flutter/material.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SplashBackground(
        child: SplashViewBody(
          title: SplashText.splshViewTitle_2,
          subtitle: SplashText.splshViewSubtitle_2,
          image: SplashText.splshViewImage_2,
          onTap: onTap,
          onPressed: () {},
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}
