import 'package:exam_2/modelui/card_page.dart';
import 'package:exam_2/modelui/model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var mylist = modelList;
  List<Model> newList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: TextButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
              CardPage(cardList: newList),));
        },
        child: Text(
          "total count-> ${newList.length}",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      )),
      body: ListView.builder(
        itemCount: modelList.length,
        itemBuilder: (context, index) => Card(
          child: Row(
            children: [

              Container(
                height: 100,
                width: 100,
                child: Image.asset("${modelList[index].ima}"),
              ),
              SizedBox(
                width: 20,
              ),
              Text("${modelList[index].name}"),
              SizedBox(
                width: 20,
              ),
              Text("${modelList[index].amount}"),
              SizedBox(
                width: 20,
              ),
              Text("${modelList[index].id}"),
              TextButton(
                  onPressed: () {
                    try {
                      newList.firstWhere((element) => element.id == modelList[index].id);
                    } catch (e) {
                      setState(() {});
                      newList.add(modelList[index]);
                    }
                  },
                  child: Text("Add To Card"))
            ],
          ),
          // child: Text("${modelList[index].name}"),
        ),
      ),
    );
  }
}
