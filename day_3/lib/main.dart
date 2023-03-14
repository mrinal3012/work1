import 'package:day_3/home_page.dart';
import 'package:day_3/model/button_page.dart';
import 'package:day_3/navigation/buttonhome_page.dart';
import 'package:day_3/navigation/drawer_page.dart';
import 'package:day_3/navigation/silverappbar.dart';
import 'package:flutter/material.dart';

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
      home: DrawerPage(),
    );
  }
}