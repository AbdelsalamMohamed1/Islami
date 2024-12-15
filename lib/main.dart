import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_display.dart';
import 'package:islami/Home/home_screen.dart';
import 'package:islami/Introduction/introduction_screen.dart';
import 'package:islami/Quran/sura_display.dart';
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
        SuraDisplay.routeName:(context)=>SuraDisplay(),
        HadethDisplay.routeName:(context)=>HadethDisplay(),
      },
      theme: MyThemeData.lightTheme,
    );
  }
}


