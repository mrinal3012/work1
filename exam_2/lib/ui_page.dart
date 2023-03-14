import 'package:flutter/material.dart';

class UiPage extends StatefulWidget {
  const UiPage({Key? key}) : super(key: key);

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("images/phone.jpg"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 15),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Welcome \nBack",
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              Spacer(),
              Container(
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(45))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 70,right: 10,left: 10),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            fillColor: Colors.blue.shade50,
                            filled: true,
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: "Enter your email",
                            labelText: "Enter your email",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.blue),
                            )),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        obscureText: isTrue,
                        controller: passwordController,
                        decoration: InputDecoration(
                            fillColor: Colors.blue.shade50,
                            filled: true,
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isTrue = !isTrue;
                                  });
                                },
                                icon: Icon(Icons.visibility)),
                            hintText: "Enter your password",
                            labelText: "Enter your password",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.blue),
                            )),
                      ),
                      SizedBox(height: 15,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text("Forgot Password",style: TextStyle(fontSize: 18,color: Colors.lightBlue),),
                      )
                    ],
                  ),
                ),
                // color: Colors.white,
              ),
            ],
          )),
    );
  }
}
