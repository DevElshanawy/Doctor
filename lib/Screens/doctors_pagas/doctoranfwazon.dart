import '../../Widgets/doctorsitem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constant.dart';
import 'package:flutter/material.dart';

class Doctoranfwazon extends StatefulWidget {
  const Doctoranfwazon({super.key});

  @override
  State<Doctoranfwazon> createState() => _DoctoranfwazonState();
}

class _DoctoranfwazonState extends State<Doctoranfwazon> {
  List data = [];
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('انف وازن').get();

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
        title: const Text("  انف واذن وحنجره"),
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
                onTap: () {},
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
