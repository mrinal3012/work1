import 'package:flutter/material.dart';

class HomePageTop extends StatelessWidget {
  const HomePageTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          height: 50,width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(.3),borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.dashboard_customize_rounded,size: 35,color: Colors.blueGrey),
          ),
          Column(children: [
            Text("Current Location",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(.4)),),
            Text("Semarang, INA",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.blue.withOpacity(.8)),),

          ],),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.fromBorderSide(BorderSide(width: 7,color: Colors.white70.withOpacity(0.9))),
                  image: DecorationImage(image: AssetImage("images/docter3.jpg")),
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            ),
        ],),
      ),
    );
  }
}
