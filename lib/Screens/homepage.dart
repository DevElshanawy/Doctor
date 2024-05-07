import 'package:flutter/material.dart';
import 'package:doctor_appp/Screens/homeItem.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        HomeItem(text: "مكالمة دكتور", onTap: () {}),
                        const SizedBox(
                          width: 20,
                        ),
                        HomeItem(
                          text: "دكتور",
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: HomeItem(
                        text: "تحاليل وأشعة",
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
