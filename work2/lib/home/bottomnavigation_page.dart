import 'package:flutter/material.dart';

class BottomNavigationPAge extends StatelessWidget {
  const BottomNavigationPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Colors.red,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.teal,

          items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon:Icon(Icons.article),label:"Artical"),
        BottomNavigationBarItem(icon:Icon(Icons.calendar_month),label:"Time",),
        BottomNavigationBarItem(icon:Icon(Icons.manage_accounts_sharp),label:"People"),

      ]),
    );
  }
}
