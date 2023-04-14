import 'package:bilet/ekranlar/bottom_bar.dart';
import 'package:bilet/ekranlar/home_page.dart';
import 'package:bilet/ekranlar/welcome_page.dart';
import 'package:bilet/utils/app_styles.dart';
import 'package:bilet/view/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor : primary,
      ),
      home:
       WelcomePage() ,
    );

  }
}

