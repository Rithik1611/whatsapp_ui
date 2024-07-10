import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/my_messagecard.dart';
import 'package:whatsapp_ui/senders_messagecard.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MyMessagecard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          }
          return SendersMessagecard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        });
  }
}