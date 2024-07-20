import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget Mobilescreen;
  final Widget Webscreen;
  const ResponsiveScreen({super.key,required this.Mobilescreen,required this.Webscreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth>900){
        return Webscreen;
      }
      return Mobilescreen;
    }
    );
  }
}
