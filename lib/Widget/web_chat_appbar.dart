import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/view/colors.dart';
import 'package:untitled1/view/info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .077,
      width: MediaQuery.of(context).size.width * 0.75,
      color: webAppBarColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                child: VerticalDivider(),
                width: 0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.010,
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Text(
                info[0]['name'].toString(),
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
