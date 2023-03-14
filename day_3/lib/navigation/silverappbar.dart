import 'package:flutter/material.dart';

class SilverAppBar extends StatefulWidget {
  const SilverAppBar({Key? key}) : super(key: key);

  @override
  State<SilverAppBar> createState() => _SilverAppBarState();
}

class _SilverAppBarState extends State<SilverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          title: Center(child: Text("play all value")),
          expandedHeight: 180,
          flexibleSpace: FlexibleSpaceBar(

              background:
          Image.network(width: double.infinity,fit:BoxFit.cover,"https://www.shutterstock.com/image-photo/man-hands-holding-global-network-260nw-1801568002.jpg")),
        ),
        SliverList(delegate: SliverChildListDelegate([
          ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),ListTile(
            title: Text("Bangladesh"),
            subtitle: Text("all the product is not good"),
          ),
        ]))
      ]),
    );
  }
}
