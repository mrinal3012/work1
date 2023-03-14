import 'package:flutter/material.dart';
import 'package:work2/biography/back_page.dart';

class BiographyPage extends StatelessWidget {
  const BiographyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:30,left: 20,right: 20 ),
        child: Column(
          children: [
            Expanded(
                flex: 12,
                child: ListView(
                  children: [

                    Container(height: 50,width: double.infinity,child: BackPage(),)



                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.teal,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Make appointment",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
