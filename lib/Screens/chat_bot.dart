
import 'package:doctor_appp/Shared/chat_controller.dart';
import 'package:doctor_appp/Widgets/message_card.dart';
import 'package:doctor_appp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final _c = ChatController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Initialize mq here
    mq = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        title: const Text('Chat '),
      ),

      // send message field & btn
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            //text field
            Expanded(
              child: TextFormField(
                controller: _c.textC,
                textAlign: TextAlign.center,
                onTapOutside: (e) => FocusScope.of(context).unfocus(),
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: ' Ask me anything you want...',
                  isDense: true,
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8,),
            // send btn
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: _c.askQuestion,
                icon: const Icon(
                  Icons.rocket_launch_rounded,
                  color: Colors.white,
                  size: 28,
                ),),
            )
          ],
        ),
      ),

      //body
      body: Obx(
            () => ListView(
          physics: const BouncingScrollPhysics(),
          controller: _c.scrollC,
          padding: EdgeInsets.only(top: mq.height * .02, bottom: mq.height * .1),
          children: _c.list.map((e) => MessageCard(message: e)).toList(),
        ),
      ),
    );
  }
}

