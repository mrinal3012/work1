import 'package:day_3/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder:(context)=>HomePage() ));
                    });
                  },
                  child: Text(
                    "*  Play  *",style: GoogleFonts.abel(fontSize: 21, color: Colors.black,fontWeight: FontWeight.w700,
                        backgroundColor: Colors.red,),
                  )),
              OutlinedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              }, child: Text("play",style: TextStyle(fontSize: 20),)),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
              }, child: Text("Play",style: TextStyle(fontSize: 21),)),
              SizedBox(height: 25,),

              // IconButton(onPressed: (){}, icon: Icon(Icons.add))
              FloatingActionButton(onPressed: (){})

            ],
          ),
        ),
      ),
    );
  }
}
