import 'package:doctor_appp/Widgets/homeItem.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          children: [
            Row(
              children: [
                HomeItem(
                  image: "",
                  text: "مكالمه دكتور",
                  onTap: () {},
                ),
                const SizedBox(
                  width: 20,
                ),
                HomeItem(
                  image: "",
                  text: "دكتور",
                  onTap: () {
                    Navigator.of(context).pushNamed('doctorpage');
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: HomeItem(
                image: "",
                text: "تحاليل واشاعات",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
