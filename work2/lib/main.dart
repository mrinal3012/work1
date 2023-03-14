import 'package:flutter/material.dart';
import 'package:work2/biography/back_page.dart';
import 'package:work2/biography/details_page.dart';
import 'package:work2/contruct/demo_page.dart';
import 'package:work2/home/bottom_page.dart';
import 'package:work2/home/bottomnavigation_page.dart';
import 'package:work2/home/card_page.dart';
import 'package:work2/home/homepage_top.dart';
import 'package:work2/home/search_page.dart';
import 'package:work2/home/button_page.dart';
import 'package:work2/medical/biography_page.dart';
import 'package:work2/medical/contruct_page.dart';
import 'package:work2/medical/home_page.dart';
import 'package:work2/medical/card_page.dart';

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

        primarySwatch: Colors.blue,
      ),
      home:ContructPage(),
    );
  }
}
