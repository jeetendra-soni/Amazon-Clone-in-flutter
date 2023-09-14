import 'package:amazone_clone/constants/global.dart';
import 'package:amazone_clone/router.dart';
import 'package:flutter/material.dart';
import 'view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            primary: GlobalVariable.primaryColor
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),


      home: Splash_Screen(),
    );
  }
}

