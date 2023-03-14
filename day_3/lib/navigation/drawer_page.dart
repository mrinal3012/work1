import 'package:day_3/navigation/buttonhome_page.dart';
import 'package:day_3/navigation/group_page.dart';
import 'package:day_3/navigation/message_page.dart';
import 'package:day_3/navigation/setting_page.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  List<Widget> newpage = [
    ButtonHomePage(),
    SettingPage(),
    MessagePage(),
    GroupPage()
  ];
  var Count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
              child: UserAccountsDrawerHeader(
                  accountName: Text("Mrinal Palit"),
                  accountEmail: Text("mrinalpalit.cse@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/539719/pexels-photo-539719.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")))),
          ListTile(
            onTap: () {
              setState(() {

                Navigator.of(context).push(MaterialPageRoute(builder:
                    (context) => ButtonHomePage(),));
              });
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            onTap: () {
              setState(() {
                var count = 1;
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                SettingPage()));
              });
            },
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
          ListTile(
            onTap: () {
              setState(() {
                var count = 2;
              });
            },
            leading: Icon(Icons.message_outlined),
            title: Text("Message"),
          ),
          ListTile(
            onTap: () {
              setState(() {
                var count = 3;
              });
            },
            leading: Icon(Icons.group),
            title: Text("Group"),
          ),
        ]),
      ),
    );
  }
}
