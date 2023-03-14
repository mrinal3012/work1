import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Column(
              children: [
                Text("hello Bangladesh",style: GoogleFonts.poppins(fontSize: 18),),
                Text("go to play"),
              ],
            ),
            Icon(Icons.add_alert_rounded),
          ],
        ),
        actions: [Icon(Icons.more_horiz_outlined)],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg"))),
          ),
          Column(children: [
            Text("hello"),
            Image(image: AssetImage("images/pic.jpg"))
          ]),
          SizedBox(height: 5,),
          ListTile(
            tileColor: Colors.grey,
            leading: Icon(Icons.email),
            title: Text("Mrinal Palit",style: GoogleFonts.abel(fontSize: 18),),
            subtitle: Text("mrinalpalit.cse@gmail.com"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          
          Column(children: [
            Text("Mrinal Palit",style: myStyle(),),
            Text("Mrinal Palit",style: newStyle(21,Colors.amber),),
            Text("Mrinal Palit",),
            Text("Mrinal Palit",),
          ],),
        ],
      ),
    );
  }
}

myStyle(){
 return GoogleFonts.lobster(fontSize: 30,color: Colors.red,fontWeight: FontWeight.w700);
}
newStyle(double fontsize,[Color ? clr,FontWeight ? fW]){
  return GoogleFonts.abel(
      fontSize: fontsize,
          color: clr,
    fontWeight: fW,

  );
}
