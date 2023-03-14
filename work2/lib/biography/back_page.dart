import 'package:flutter/material.dart';

class BackPage extends StatelessWidget {
  const BackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        Container(height: 50,width: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
        child: Icon(Icons.arrow_back_ios,size: 25,color: Colors.grey,),
        ),
        Container(height: 50,width: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
        child: Icon(Icons.email_outlined,size: 25,color: Colors.grey,),
        ),

      ],),
    );
  }
}
