import 'package:flutter/material.dart';
import 'package:untitled1/Widget/contacts_list.dart';
import 'package:untitled1/view/colors.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: Text(
              'Whatsapp',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ))
            ],
            bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(text: 'Status'),
                  Tab(text: 'Calls'),
                ]),
          ),
          body: ContactsList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: tabColor,
            child: Icon(
              Icons.comment,
              color: Colors.white,
            ),
          ),
        ));
  }
}
