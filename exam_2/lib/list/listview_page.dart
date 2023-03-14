import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var Counter = 0;

  increment() async {
    SharedPreferences Shp = await SharedPreferences.getInstance();
    Counter++;
    Shp.setInt("Counter", Counter);
  }

  totalValue() async {
    SharedPreferences Shp = await SharedPreferences.getInstance();
    Counter = Shp.getInt("Counter") ?? 0;
  }

  @override
  void initState() {
    totalValue();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(108.0),
          child:Builder(builder: (context) => TextButton(onPressed: () {
            Scaffold.of(context).setState(() {
                  SnackBar(content: Text("hello"));

            });
          }, child: Text("SnackBar")),)
      ),
    );
  }
}
