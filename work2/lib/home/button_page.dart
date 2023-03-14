import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white.withOpacity(.5)),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              Text(
                "Heart surgeon",
                style: TextStyle(
                    fontSize: 12, color: Colors.black.withOpacity(0.9)),
              )
            ],
          ),
        ),
        Container(
          height: 50,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white.withOpacity(.5)),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Icon(
                  Icons.account_circle_rounded,
                  color: Colors.teal,
                ),
              ),
              Text(
                "Heart surgeon",
                style: TextStyle(
                    fontSize: 12, color: Colors.black.withOpacity(0.9)),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white.withOpacity(.4),
          child: Icon(Icons.add_alert_sharp),
        )
      ],
    ));
  }
}
