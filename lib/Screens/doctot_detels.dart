import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_appp/Widgets/doctorsitem.dart';
import 'package:doctor_appp/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class detels extends StatefulWidget {
  QueryDocumentSnapshot product;
  detels({required this.product});

  @override
  State<detels> createState() => _detelsState();
}

class _detelsState extends State<detels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("بيانات الدكتور"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: AssetImage('assets/images/doctor.png'),
                  ),
                ),
                Center(
                  child: Text(
                    widget.product.get(Kname),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  widget.product.get(Kinfo),
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.product.get(Krating),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images/star.png"),
                    ),
                  ],
                ),
                 Divider(
                  indent: 50,
                  endIndent: 20,
                  height: 30,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.product.get(Kprice),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.money_rounded),
                  ],
                ),
                Divider(
                  indent: 50,
                  endIndent: 20,
                  height: 30,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.product.get(Klocarion),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.location_on),
                  ],
                ),
               
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                botton(
                  text: 'حجز',
                  image: "assets/images/booking.png",
                ),
                botton(image: "assets/images/call.png", text: "اتصل")
              ],
            )
          ],
        ),
      ),
    );
  }
}
