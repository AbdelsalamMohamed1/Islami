import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/Home/home_screen.dart';
import 'package:islami/data_features/my_app_colors.dart';
import 'package:islami/data_features/my_theme_data.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = 'introductionScreen';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppColors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/logo.png')),
          Expanded(
              child: IntroductionScreen(
            pages: [
              PageViewModel(
                  image: Image(
                    image: AssetImage('assets/images/intro_welcome.png'),
                  ),
                  bodyWidget: Text(
                    'Welcome To Islmi App',
                    style: MyThemeData.lightTheme.textTheme.bodySmall,
                  ),
                  titleWidget: Text(
                    '',
                    style: MyThemeData.lightTheme.textTheme.titleSmall,
                  )),
              PageViewModel(
                image: Image(
                  image: AssetImage('assets/images/intro_mosque.png'),
                ),
                bodyWidget: Text(
                  'We Are Very Excited To Have You In Our Community',
                  style: MyThemeData.lightTheme.textTheme.bodySmall,
                ),
                titleWidget: Text(
                  'Welcome to Islami',
                  style: MyThemeData.lightTheme.textTheme.titleSmall,
                ),
              ),
              PageViewModel(
                image: Image(
                  image: AssetImage('assets/images/intro_quran.png'),
                ),
                bodyWidget: Text(
                  'Read, and your Lord is the Most Generous',
                  style: MyThemeData.lightTheme.textTheme.bodySmall,
                ),
                titleWidget: Text(
                  'Reading the Quran',
                  style: MyThemeData.lightTheme.textTheme.titleSmall,
                ),
              ),
              PageViewModel(
                image: Image(
                  image: AssetImage('assets/images/intro_praise.png'),
                ),
                bodyWidget: Text(
                  'Praise the name of your Lord, the Most High',
                  style: MyThemeData.lightTheme.textTheme.bodySmall,
                ),
                titleWidget: Text(
                  'Bearish',
                  style: MyThemeData.lightTheme.textTheme.titleSmall,
                ),
              ),
              PageViewModel(
                image: Image(
                  image: AssetImage('assets/images/intro_radio.png'),
                ),
                bodyWidget: Text(
                  'You can listen to the Holy Quran Radio through the application for free and easily',textAlign: TextAlign.center,
                  style: MyThemeData.lightTheme.textTheme.bodySmall,
                ),
                titleWidget: Text(
                  'Holy Quran Radio',
                  style: MyThemeData.lightTheme.textTheme.titleSmall,
                ),
              ),
            ],
            next: Text(
              'next',
              style: MyThemeData.lightTheme.textTheme.displaySmall,
            ),
            done: Text('done',
              style: MyThemeData.lightTheme.textTheme.displaySmall,),
            back: Text('back',
              style: MyThemeData.lightTheme.textTheme.displaySmall,),
            showBackButton: true,
            onDone: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
            dotsDecorator: DotsDecorator(
                color: Colors.grey, activeColor: MyAppColors.primary),
          )),
        ],
      ),
    );
  }
}
