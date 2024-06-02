import 'package:doctor_appp/Screens/blood_and_thalel_bage/search.dart';
import 'package:doctor_appp/Screens/blood_and_thalel_bage/detalsblood.dart';
import 'package:doctor_appp/Widgets/blood_bank_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_appp/Widgets/t_doctor.dart';
import 'package:doctor_appp/constant.dart';
import 'package:flutter/material.dart';


class cala_bage extends StatefulWidget {
  const cala_bage({super.key});

  @override
  State<cala_bage> createState() => _cala_bageState();
}

class _cala_bageState extends State<cala_bage> {
  List data = [];
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('غسيل كلى').get();

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
        title: Text("مراكز عسيل الكلى"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child:  T_doctor(
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
                onTap: (){Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => detelsblood(doctors: data[i])));},
                image1: 'assets/images/doctor.png',
                image: "assets/images/call.png",
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