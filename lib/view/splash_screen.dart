import 'dart:async';
import 'package:amazone_clone/view/Auth_Screens/login_screen.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn_Screen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Image.asset("assets/images/amazon.jpg", height: 200, width: 300,)),
      bottomNavigationBar: Container(
        height: 50,
        child: Column(
          children: [
            Text("Made By"),
            Text("JEETENDRA SONI", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          ],
        ),
      ),
    );
  }
}

