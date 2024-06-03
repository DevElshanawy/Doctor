import 'package:doctor_appp/Widgets/homeItem.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static const String routeName = "homepage";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40,),
        child: ListView(
          children: [
           
            Row(
              children: [
                HomeItem(
                  image: "assets/images/test.png",
                  text: "بنوك دم ومراكز غسيل كلى",
                  onTap: () {
                    Navigator.of(context).pushNamed("bloodpage");
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                HomeItem(
                  image: "assets/images/doctor.png",
                  text: "عيادات",
                  onTap: () {
                    Navigator.of(context).pushNamed('doctorpage');
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                HomeItem(
                  image: "assets/images/t.jpg",
                  text: "تحاليل واشاعات",
                  onTap: () {
                    Navigator.of(context).pushNamed("thalelpage");
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                HomeItem(
                  image: "assets/images/clinical.png",
                  text: " تنبيهات الادويه",
                  onTap: () {
                    Navigator.of(context).pushNamed("notifictions");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
