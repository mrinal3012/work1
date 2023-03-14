import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Container(
          height: 250,
          color: Colors.red,
          child: Row(children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(12),child:Image(image: AssetImage("images/docter5.jpg")),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dr.Anna baker",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black)),
                Text("Heart surgeon speccialist",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white.withOpacity(.4)),),
              Row(children: [
                Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white)
                  ,child: Icon(Icons.star),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Roting",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(.4)),),
                  Text("4.5 out of 5",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(.9)),),
                ],)
              ],)

              ],
            )
          ],),
        ),
      ),
    );
  }
}
