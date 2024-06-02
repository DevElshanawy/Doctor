import 'package:doctor_appp/Screens/blood_and_thalel_bage/datelsasha.dart';
import 'package:doctor_appp/Screens/blood_and_thalel_bage/search.dart';
import 'package:doctor_appp/Widgets/blood_bank_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_appp/Widgets/t_doctor.dart';
import 'package:doctor_appp/constant.dart';
import 'package:flutter/material.dart';

class asha_bage extends StatefulWidget {
  const asha_bage({super.key});

  @override
  State<asha_bage> createState() => _asha_bageState();
}

class _asha_bageState extends State<asha_bage> {
  List data = [];
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('التحاليل').get();

    setState(() {
      data.addAll(querySnapshot.docs);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("معامل الاشاعه"),
      ),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: T_doctor(
                image: 'assets/images/search.png',
                text: 'search',
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: Search(doctors: data),
                  );
                })),
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) {
              return bloodBankIstem(
                image1: 'assets/images/a.jpg',
                onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => detelsasha(doctors: data[i])));},
                image: "assets/images/star.png",
                nameText: "${data[i][Kname]}",
                infoText: "${data[i][Kinfo]}",
                priceText: "${data[i][Kprice]}",
                locationText: "${data[i][Klocarion]}",
              );
            },
          ),
        ),
      ]),
    );
  }
}
