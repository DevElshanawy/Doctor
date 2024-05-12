import 'package:flutter/material.dart';
class T_doctor extends StatelessWidget {
  const T_doctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('doctorsscreen');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: [
              Icon(Icons.menu),
              SizedBox(
                width: 270,
              ),
              Text(
                "اسنان",
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
