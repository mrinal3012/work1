import 'package:flutter/material.dart';
import 'package:work2/home/bottom_page.dart';
import 'package:work2/home/button_page.dart';
import 'package:work2/home/card_page.dart';
import 'package:work2/home/homepage_top.dart';
import 'package:work2/home/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
          child: Column(children: [


            Expanded(flex: 3, child:HomePageTop(), ),
            Expanded(flex: 2, child:SearchPage(), ),
            Expanded(flex: 2, child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [ Text("Upcoming Schedule",style: TextStyle(fontSize: 21
            ,fontWeight: FontWeight.w700),),Text("See all",style: TextStyle(fontSize: 15,color: Colors.cyan),)  ],) ),

            Expanded(flex: 6, child:CardPage(), ),
            Expanded(flex: 2, child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Let's find your doctor",style: TextStyle(fontSize: 18,color: Colors.blue),),
              Icon(Icons.tune)
            ],) ),

            Expanded(flex: 2, child:ButtonPage(), ),
            Expanded(flex: 4, child:BottomPage(), ),


          ],),
        ),

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
      ),
    );
  }
}
