
import 'package:doctor_appp/Screens/Splash_View_1.dart';
import 'package:doctor_appp/Screens/Splash_View_2.dart';
import 'package:doctor_appp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:doctor_appp/Screens/Splash_View_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothIndicator extends StatefulWidget {
  const SmoothIndicator({super.key});

  @override
  State<SmoothIndicator> createState() => _SmoothIndicatorState();
}

class _SmoothIndicatorState extends State<SmoothIndicator> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            children: [
              SplashView1(
                onTap: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
              ),
              SplashView2(
                onTap: () {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
              ),
              const SplashView3(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: mq.height * .07),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Colors.blue,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
