// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeItem extends StatelessWidget {
  HomeItem(
      {super.key,
      required this.text,
      required this.onTap,
      required this.image});
  String text;
  Function onTap;
  String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Stack(
          children: [
            Container(
              height: 220,
              width: 150,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffe6eeff),
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(image),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 220,
              width: 155,
              child: FittedBox(
                child: Text(
                  (text),
                  style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      // fontFamily: "ArefRuqaa",
                      color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
