import 'package:flutter/material.dart';
import 'package:work1/model/model.dart';
import 'package:work1/model/popular_page.dart';
import 'package:work1/model/travel_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isColor=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blueGrey.withOpacity(0.2),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/00/14/31/360_F_100143199_oabx0YQ31s51VHVbD0aMysSTZ7wyXZJB.jpg"),
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Let's enjoy",
                style: TextStyle(
                    fontSize: 18, color: Colors.black.withOpacity(0.5)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "your vacation!",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black.withOpacity(0.8)),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  TextFormField(

                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 35,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        hintText: "Search your trip",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.blue)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.blue))),
                  ),
                  Positioned(
                      right: 2,
                      left: 290,
                      child: Container(
                        height: 60,
                        width: 50,
                        child: Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(100)),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(

                      onPressed: () {
                        setState(() {
                          isColor=!isColor;
                        });
                      },
                      child: Text(
                        "All",
                        style: TextStyle(
                            fontSize: 16,
                            color: isColor==true?Colors.blue:Colors.blueGrey.withOpacity(.7)),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          isColor=!isColor;
                        });
                      },
                      child: Text(
                        "New",
                        style: TextStyle(
                            fontSize: 16,
                            color: isColor==true?Colors.blue:Colors.blueGrey.withOpacity(.7)),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                        isColor=!isColor;
                      });},
                      child: Text(
                        "Most Viewed",
                        style: TextStyle(
                            fontSize: 15,
                            color: isColor==true?Colors.blue:Colors.blueGrey.withOpacity(.7)),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                        isColor=!isColor;
                      });},
                      child: Text(
                        "Recommeded",
                        style: TextStyle(
                            fontSize: 15,
                            color: isColor==true?Colors.blue:Colors.blueGrey.withOpacity(.7)),
                      )),
                ],
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: TravelPage(),
              ),
              Text("Popular categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                child: PopularPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
