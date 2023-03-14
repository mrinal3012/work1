import 'package:flutter/material.dart';
import 'package:second/model/card_page.dart';
import 'package:second/model/homepagecontroller.dart';
import 'package:second/model/model.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomePageController homePageController=Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Total item number->${homePageController.cardList.length}"),),
      body: Column(children: [
        Expanded(
            child: GridView.builder(
          itemCount: modelList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                child: Image.asset("${modelList[index].image}"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Text(
                  "${modelList[index].name}",
                  style: TextStyle(fontSize: 21, color: Colors.teal),
                ),
                Text(
                  "\$${modelList[index].amount}",
                  style: TextStyle(fontSize: 21, color: Colors.red),
                ),
              ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "${modelList[index].id}",
                    style: TextStyle(fontSize: 21, color: Colors.black),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      try{
                        homePageController.cardList.firstWhere((element) =>
                        element.id==modelList[index].id);
                      }catch(e){
                        // homeList.add(modelList[index]);
                        homePageController.addToCard(modelList[index]);

                      }
                    });
                  },child:Text("Add Card"))

                ],
              )
            ],
          ),
        )),
        Container(
          height: 60,
          width: double.infinity,
          color: Colors.red,
          child: TextButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                CardPage(),));
          }, child:Text("add to card"))
        )
      ]),
    );
  }
}
