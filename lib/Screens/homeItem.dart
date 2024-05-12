import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class HomeItem extends StatelessWidget {
  HomeItem({required this.text, required this.onTap});
  String text;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 100,
                    child:
                        Image(image: AssetImage("assets/images/doctors.png"))),
              ],
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xffe6eeff),
                  offset: Offset(0, 5),
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[200],
            ),
          ),
          
          Positioned(bottom: 20,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 150,
              width: 150,
              child: FittedBox(
                child: Text(
                  (text),
                  style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
