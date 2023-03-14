import 'package:day_3/navigation/group_page.dart';
import 'package:day_3/navigation/message_page.dart';
import 'package:day_3/navigation/setting_page.dart';
import 'package:flutter/material.dart';

class ButtonHomePage extends StatefulWidget {
  const ButtonHomePage({Key? key}) : super(key: key);

  @override
  State<ButtonHomePage> createState() => _ButtonHomePageState();
}

class _ButtonHomePageState extends State<ButtonHomePage> {

  List<Widget> pages=[SettingPage(),MessagePage(),GroupPage()];
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[count],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.teal,
          onTap: (value) {
            setState(() {
              count=value;
            });
          },
           currentIndex: count,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.settings),label:"Setting"),
        BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.group_add),label: "Group"),
      ]),

    );
  }
}
