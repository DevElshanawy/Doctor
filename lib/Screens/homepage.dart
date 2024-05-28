import '../Widgets/homeitem.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 60),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: 'search',
                  suffixIcon: const Icon(Icons.search, color: Colors.black),
                ),
              ),
            ),
            Row(
              children: [
                HomeItem(
                  image: "assets/images/test.png",
                  text: "بنك دم",
                  onTap: () {},
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
                  image: "assets/images/Ellipse 36.png",
                  text: "تحاليل واشاعات",
                  onTap: () {},
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
