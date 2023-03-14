import 'package:flutter/material.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        image: AssetImage("images/docter5.jpg"))),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dr.Anna baker",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.8)),
                  ),
                  Text(
                    "Heart surgeon",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.4)),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange,size: 18,),
                      Icon(Icons.star, color: Colors.orange,size: 18,),
                      Icon(Icons.star, color: Colors.orange,size: 18,),
                      Icon(Icons.star, color: Colors.orange,size: 18,),
                      Icon(Icons.star_half_outlined, color: Colors.orange,size: 18,),
                      Text(
                        " 4.5/120 Reviews",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
