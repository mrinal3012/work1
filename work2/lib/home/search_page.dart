import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        width: double.infinity,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search_rounded,color: Colors.blue,size: 35,),

            hintText:"Search a doctor or health issue",

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white)

            )

          ),
        ),
      ),
    );
  }
}
