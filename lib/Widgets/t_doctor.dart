import 'package:flutter/material.dart';
// ignore: must_be_immutable
class T_doctor extends StatelessWidget {
   T_doctor({
    super.key,
    required this.icon,required this.text,required this.onTap
  });
IconData icon;
String text;
Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 270,
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          decoration: BoxDecoration( color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.grey, spreadRadius: 1, blurRadius: 5,offset: Offset(0,5))
          ],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black),
          ),
          height: 70,
          width: 500,
        ),
      ),
    );
  }
}
