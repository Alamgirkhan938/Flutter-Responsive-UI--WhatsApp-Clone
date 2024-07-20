import 'package:flutter/material.dart';
import 'package:untitled1/view/colors.dart';

class WebProfilebar extends StatelessWidget {
  const WebProfilebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .25,
      height: MediaQuery.of(context).size.height * 0.077,
      padding: const EdgeInsets.all(10),
      decoration:const BoxDecoration(
          color: webAppBarColor,
          border: Border(right: BorderSide(color: dividerColor))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const
          CircleAvatar(radius: 20,
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.comment,color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.grey,)),

            ],
          ),
        ],
      ),
    );
  }
}
