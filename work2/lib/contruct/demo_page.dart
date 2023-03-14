import 'dart:developer';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  var currentIndex=0;

  @override
  Widget build(BuildContext context) {
    var example;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
          animationDuration:Duration(milliseconds: 300) ,
          buttonBackgroundColor: Color(0xffCBCFDF),
          color: Color(0xffCBCFDF),

          items:[
            Icon(Icons.videocam_outlined,size: 35,color: Colors.white,),
            Icon(Icons.mic_none_outlined,size: 35,color: Colors.white),
            Icon(Icons.call_end_sharp,size: 35,color: Colors.white),
            Icon(Icons.messenger_outline,size: 35,color: Colors.white),
            Icon(Icons.more_vert_outlined,size: 35,color: Colors.white),
          ] ),
    );
  }
}
