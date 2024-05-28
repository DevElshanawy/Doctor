import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:doctor_appp/Screens/chat_bot.dart';
import 'package:doctor_appp/Screens/homepage.dart';
import 'package:doctor_appp/Screens/profilepage.dart';
import 'package:flutter/material.dart';


class BarPage extends StatefulWidget {
  const BarPage({super.key});

  @override
  State<BarPage> createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> {
  var listicon = [
    Icons.list,
    Icons.person,
  ];
  List<Widget> page=[ const Homepage(), const profilepage()];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: page[activeIndex],
        

        floatingActionButton: FloatingActionButton(
          child: const Image(image: AssetImage("assets/images/Icon_chat.png")),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>ChatBot(),));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          onTap: (p) {
          setState(() {
            activeIndex=p;
          });
          },
          icons: listicon,
          activeIndex: activeIndex,
          gapLocation: GapLocation.center,
          inactiveColor: Colors.grey,
          activeColor: Colors.blue,
        ));
  }
}
