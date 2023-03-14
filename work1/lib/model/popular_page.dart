import 'package:flutter/material.dart';
import 'package:work1/model/model.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: modelList2.length,
        itemBuilder: (context, index) => Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("${modelList2[index].image}"),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("${modelList2[index].name}")
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
