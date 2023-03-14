import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:work2/contruct/demo_page.dart';

class ContructPage extends StatefulWidget {
  const ContructPage({Key? key}) : super(key: key);

  @override
  State<ContructPage> createState() => _ContructPageState();
}

class _ContructPageState extends State<ContructPage> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage("images/doctor.jpg"))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
            child: Positioned(
                child: Column(
              children: [
                Expanded(
                    flex: 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Icon(Icons.arrow_back_ios),
                            ),
                            Container(
                              height: 150,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 5,
                                    height: 80,
                                    color: Colors.blue,
                                  ),
                                  Icon(Icons.volume_up),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/docter4.jpg")),
                              borderRadius: BorderRadius.circular(25)),
                        )
                      ],
                    )),
                Expanded(
                    flex: 10,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dermatologists",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Dr. Haley lawrence",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 35,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.5),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                Text(
                                  "5.46",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            )),
          )
        ]),


        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.blueGrey,
            animationDuration:Duration(milliseconds: 300) ,
            buttonBackgroundColor: Colors.cyan,
            color: Colors.teal,

            items:[
              Icon(Icons.videocam_outlined,size: 35,color: Colors.white,),
              Icon(Icons.mic_none_outlined,size: 35,color: Colors.white),
              Icon(Icons.call_end_sharp,size: 35,color: Colors.white),
              Icon(Icons.messenger_outline,size: 35,color: Colors.white),
              Icon(Icons.more_vert_outlined,size: 35,color: Colors.white),
            ] ),

      ),
    );
  }
}
