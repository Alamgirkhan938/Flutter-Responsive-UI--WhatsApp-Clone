import 'package:flutter/material.dart';
import 'package:untitled1/Widget/my_chat_list.dart';
import 'package:untitled1/Widget/sender_message_cart.dart';
import 'package:untitled1/view/info.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
        itemBuilder: (context,index){
        if(messages[index]['isMe']==true){
          return MyChatList(date: messages[index]['time'].toString(),
              message: messages[index]['text'].toString());
        }
        return Sendermessage(date: messages[index]['time'].toString(),
            message: messages[index]['text'].toString());
        }
    );
  }
}
