import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_appp/constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class detelsthalel extends StatefulWidget {
  QueryDocumentSnapshot doctors;
  detelsthalel({required this.doctors});

  @override
  State<detelsthalel> createState() => _detelsthalelState();
}

class _detelsthalelState extends State<detelsthalel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
         
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/t.jpg'),
                  ),
                ),
                Center(
                  child: Text(
                    widget.doctors.get(Kname),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  widget.doctors.get(Kinfo),
                  textAlign: TextAlign.right,
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
                      widget.doctors.get(Kprice),
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
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.right,
                        
                        widget.doctors.get(Klocarion),
                        style: TextStyle(
                          
                          fontWeight: FontWeight.bold,
                        ),
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
          ],
        ),
      ),
    );
  }
}
