import 'package:flutter/material.dart';
import 'package:untitled1/Widget/chatlist.dart';
import 'package:untitled1/Widget/contacts_list.dart';
import 'package:untitled1/view/colors.dart';
import 'package:untitled1/view/web_prifilebar.dart';
import 'package:untitled1/view/web_search_bar.dart';

import '../Widget/web_chat_appbar.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [WebProfilebar(), WebSearchBar(), ContactsList()],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/alam.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
              WebChatAppbar(),
              Expanded(child: Chatlist()),
              Container(
                height: MediaQuery.of(context).size.height * .07,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: dividerColor),
                    ),
                    color: chatBarMessage),
                child: Row(
                  children: [
                    Icon(
                      Icons.emoji_emotions,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.attach_file_outlined,
                      color: Colors.grey,
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(right: 15, left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: searchBarColor,
                            filled: true,
                            hintText: 'Type a message',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(width: 0,style: BorderStyle.none),
                            ),
                          contentPadding: EdgeInsets.only(left: 20)

                        ),
                      ),
                    )
                    ),
                    IconButton(onPressed: (){}, icon:Icon(Icons.mic))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
