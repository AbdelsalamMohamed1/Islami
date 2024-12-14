import 'package:flutter/material.dart';
import 'package:islami/Home/home_screen.dart';
import 'package:islami/Introduction/introduction_screen.dart';
import 'package:islami/data_features/my_theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:IntroScreen.routeName,
      routes:{
        IntroScreen.routeName: (context)=>IntroScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),

      },
      theme: MyThemeData.lightTheme,
    );
  }
}


