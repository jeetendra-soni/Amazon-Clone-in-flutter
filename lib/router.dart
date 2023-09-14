import 'package:amazone_clone/view/Auth_Screens/login_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case SignIn_Screen.routeName:
      return MaterialPageRoute(builder: (_)=>SignIn_Screen());
    default:
      return MaterialPageRoute(builder: (_)=>Scaffold(body: Center(child: Text("PAGE NOT EXIST"),)));
  }
}