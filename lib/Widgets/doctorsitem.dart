import 'package:flutter/material.dart';

class DoctorIstem extends StatelessWidget {
  const DoctorIstem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'دكتور ايمان طنطاوى ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'استشاى  زراعه وتقويم وتجميل الاسنان ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'سعر الكشف : 300 جنيه',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.money_rounded),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'المهندسين :شارع جزيره العرب',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.location_on),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  botton(text: 'حجز',image: "assets/images/booking.png",),
                  SizedBox(
                    width: 20,
                  ),
                 botton(image: "assets/images/call.png", text: "اتصل")
                ],
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5),
              spreadRadius: 3,
              blurRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        height: 270,
        width: 400,
      ),
    );
  }
}

// ignore: must_be_immutable
class botton extends StatelessWidget {
  botton({
    super.key,
    required this.image,
    required this.text,
  });
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,backgroundColor: Colors.white,
            backgroundImage: AssetImage(image),
          ),
          TextButton(
            child: Text(text),
            onPressed: () {},
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      height: 40,
      width: 100,
    );
  }
}
