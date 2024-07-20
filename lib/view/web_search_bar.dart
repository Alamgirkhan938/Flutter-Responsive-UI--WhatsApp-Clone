import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/view/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.40,
      padding:const EdgeInsets.all(7),
      decoration:const BoxDecoration(
          border:const Border(bottom: BorderSide(color: dividerColor),
          ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: TextFormField(
          cursorHeight: 20,
          decoration: InputDecoration(
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(Icons.search),
              ),
              fillColor: searchBarColor,
              hintText:'Search bar',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(width: 0)),
              contentPadding: const EdgeInsets.only(left: 20)),
        ),
      ),
    );
  }
}
