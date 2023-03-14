import 'package:flutter/material.dart';
import 'package:second/model/homepagecontroller.dart';
import 'package:second/model/model.dart';
import 'package:get/get.dart';

class CardPage extends StatefulWidget {
  // const CardPage({Key? key}) : super(key: key);



  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  HomePageController homePageController=Get.put(HomePageController());

var Total=0;

void getTotal(){
  Total=homePageController.cardList.map((e) => e.amount!*e.count)
      .reduce((value, element) => value+element);
}
@override
  void initState() {
  homePageController.cardList.length>0? getTotal():null;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: GetBuilder<HomePageController>(builder: (controller) {
        return Text("Total item->${homePageController.cardList.length}");
      },)),
      body: Column(
        children: [
          Expanded(child:GetBuilder<HomePageController>(builder: (controller) =>

              GridView.builder(
                itemCount: homePageController.cardList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 10, childAspectRatio:5),
                itemBuilder: (context, index) => Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("${homePageController.cardList[index].image}"),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text(
                          "${homePageController.cardList[index].id}",
                          style: TextStyle(fontSize: 22, color: Colors.teal),
                        ),
                        Text(
                          "${homePageController.cardList[index].name}",
                          style: TextStyle(fontSize: 22, color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Text(
                          "${homePageController.cardList[index].amount!* homePageController.cardList[index].count}",
                          style: TextStyle(fontSize: 22, color: Colors.teal),
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: () {

                              "${homePageController.cardList[index].count>0? homePageController.cardList[index].count--:
                              homePageController.cardList.removeAt(index)}";
                              getTotal();

                            }, icon: Icon(Icons.remove)),
                            Text(
                              "${homePageController.cardList[index].count}",
                              style: TextStyle(fontSize: 22, color: Colors.red),
                            ),
                            IconButton(onPressed: () {

                              homePageController.incrementQuantity(index);
                              //"${homePageController.cardList[index].count++}";
                              getTotal();

                            }, icon: Icon(Icons.add)),
                            IconButton(onPressed: () {

                              // "${homePageController.cardList.removeAt(index)}";
                              homePageController.removeFromCard(index);
                              getTotal();

                            }, icon: Icon(Icons.delete)),

                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),

            )),



          Container(height: 50,width: double.infinity,child: Center(
            child: Text("Total Cost-> ${Total??0}",style: TextStyle(
              fontSize: 21,color: Colors.black,fontWeight: FontWeight.w700
            ),),
          ),)
        ],
      )
    );
  }
}
