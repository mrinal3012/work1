import 'package:flutter/material.dart';

import 'model.dart';

class CardPage extends StatefulWidget {
  // const CardPage({Key? key}) : super(key: key);

  List<Model> cardList;

  CardPage({required this.cardList});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  var totalValue = 0;

  void getTotal() {
    totalValue=widget.cardList.map((e) => e.amount!.toInt()*e.count).
    reduce((value, element) => value+element);
  }

  @override
  void initState() {
    getTotal();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          title: Text(
        "Total amount-> $totalValue ",
        style: TextStyle(fontSize: 21, color: Colors.white),
      )),
      body: ListView.builder(
        itemCount: widget.cardList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: Image.asset("${widget.cardList[index].ima}"),
              ),
              Column(
                children: [
                  Text(
                    "${widget.cardList[index].name}",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  Text(
                    "${widget.cardList[index].amount}",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          "${widget.cardList[index].count>0? widget.cardList[index].count--
                          :widget.cardList.removeAt(index)}";
                          getTotal();
                        });
                      },
                      icon: Icon(Icons.remove)),
                  Text("${widget.cardList[index].count}"),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          "${widget.cardList[index].count++}";
                          getTotal();
                        });
                      },
                      icon: Icon(Icons.add)),

                  IconButton(
                      onPressed: () {
                        setState(() {
                          "${widget.cardList.removeAt(index)}";
                          getTotal();
                        });
                      },
                      icon: Icon(Icons.delete)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
