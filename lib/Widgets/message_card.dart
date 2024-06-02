import 'package:flutter/material.dart';


import '../Shared/message.dart';
import '../main.dart';

class MessageCard extends StatelessWidget {
  final Message message;

  MessageCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    const r = Radius.circular(15);
    return message.msgType ==MessageType.bot?

        //bot
    Row(
      children: [
        SizedBox(
          width: 6,
        ),
        CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Image.asset(
              "assets/images/chatBot.png",
              width: 28,
            )),
        Container(
          constraints: BoxConstraints(maxWidth: mq.width * .6),
          margin:
              EdgeInsets.only(bottom: mq.height * .02, left: mq.height * .03),
          padding: EdgeInsets.symmetric(
              vertical: mq.height * .01, horizontal: mq.width * .02),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.only(topLeft: r, topRight: r,bottomRight: r)),
          child: Text(message.msg,),
        )
      ],
    )

    //user
        : Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: mq.width * .6),
          margin:
          EdgeInsets.only(bottom: mq.height * .02, right: mq.height * .03),
          padding: EdgeInsets.symmetric(
              vertical: mq.height * .01, horizontal: mq.width * .02),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.only(topLeft: r, topRight: r,bottomLeft: r)),
          child: Text(message.msg ),
        ),

        CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Icon(Icons.person,color: Colors.blue,),
            ),
        SizedBox(
          width: 6,
        ),
      ],
    );
  }
}
