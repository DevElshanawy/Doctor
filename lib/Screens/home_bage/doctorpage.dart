import 'package:doctor_appp/Widgets/t_doctor.dart';
import 'package:flutter/material.dart';

class doctorpage extends StatelessWidget {
  const doctorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('doctor'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorayon');
                },
                image: 'assets/images/f.png',
                text: "عيون",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorasnan');
                },
                image: 'assets/images/q.png',
                text: "اسنان",
              ),
              
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed("doctorgalda");
                },
                image: 'assets/images/r.png',
                text: "جلديه",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed("doctoranfwazon");
                },
                image: 'assets/images/ear.png',
                text: " انف واذن وحنجره  ",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorcalb');
                },
                image: 'assets/images/heart.png',
                text: "قلب",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctormokwasab');
                },
                image: 'assets/images/medicine.png',
                text: "مخ واعصاب",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed("doctorbatna");
                },
                image: 'assets/images/stomach.png',
                text: "باطنه",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorazam');
                },
                image: 'assets/images/arthritis.png',
                text: "عظام",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed( "doctornesawtawled");
                },
                image: 'assets/images/obstetrical.png',
                text: "نساءوتوليد",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorcala');
                },
                image: 'assets/images/kidney.png',
                text: "كلى",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctoratfal');
                },
                image: 'assets/images/newborn.png',
                text: "اطفال وحديثى الولاده",
              ),
                T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed("doctormafsy");
                },
                image: 'assets/images/brain.png',
                text: " نفسى",
              ),
               T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed("doctortaksas");
                },
                image: 'assets/images/waist.png',
                text: "تخسيس وتغذيه",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed("doctorgraha");
                },
                image: 'assets/images/plastic-surgery.png',
                text: "جراحه",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
