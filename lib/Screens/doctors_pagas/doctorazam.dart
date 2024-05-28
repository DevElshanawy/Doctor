import '../doctot_detels.dart';
import '../../Widgets/doctorsitem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constant.dart';
import 'package:flutter/material.dart';

class Doctorazam extends StatefulWidget {
  const Doctorazam({super.key});

  @override
  State<Doctorazam> createState() => _DoctorazamState();
}

class _DoctorazamState extends State<Doctorazam> {
  List data = [];
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('عظام').get();

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
        title: const Text("عظام"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              labelText: 'search',
              suffixIcon: const Icon(Icons.search, color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) {
              return DoctorIstem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detels(product: data[i])));
                },
                nameText: "${data[i][kname]}",
                infoText: "${data[i][kinfo]}",
                priceText: "${data[i][kprice]}",
                locationText: "${data[i][klocarion]}",
                ratingText: "${data[i][krating]}",
              );
            },
          ),
        ),
      ]),
    );
  }
}
