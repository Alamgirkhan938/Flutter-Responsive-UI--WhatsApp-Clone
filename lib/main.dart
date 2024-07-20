import 'package:flutter/material.dart';
import 'package:untitled1/view/colors.dart';
import 'package:untitled1/view/mobile_screen.dart';
import 'package:untitled1/view/responsive_screen.dart';
import 'package:untitled1/view/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home:const ResponsiveScreen(Mobilescreen: MobileScreen(), Webscreen: WebScreen())
    );
  }
}
