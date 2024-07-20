import 'package:flutter/material.dart';
import 'package:untitled1/view/colors.dart';

class Sendermessage extends StatelessWidget {
  String message;
  String date;
  Sendermessage({super.key,required this.date,required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 1,
          color: senderMessageColor,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding:
                EdgeInsets.only(right: 30, left: 10, top: 5, bottom: 20),
                child: Text(message,style: TextStyle(fontSize: 16),),
              ),
              Positioned(right: 10,bottom: 2,
                  child: Row(
                    children: [
                      Text(date,style: TextStyle(fontSize: 13,color: Colors.white60),),
                      SizedBox(width: 5,),
                      Icon(Icons.done_all,size: 20,color: Colors.white60,)
                    ],
                  ))

            ],
          ),
        ),
      ),
    );
  }
}
