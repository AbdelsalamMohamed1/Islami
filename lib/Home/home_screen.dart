import 'package:flutter/material.dart';
import 'package:islami/data_features/my_app_colors.dart';
import '../Hadeth/hadeth_screen.dart';
import '../Quran/quran_screen.dart';
import '../Radio/radio_screen.dart';
import '../Sebha/sebha_screen.dart';
import '../Time/time_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<Widget> screens=[QuranScreen(),HadethScreen(),SebhaScreen(),RadioScreen(),TimeScreen()];
class _HomeScreenState extends State<HomeScreen> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar:Theme(data: Theme.of(context).copyWith(), child: BottomNavigationBar(
        backgroundColor: MyAppColors.primary,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),label: 'Quran'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),label: 'Hadeth'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),label: 'Sebha'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),label: 'Radio'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/ic_time.png')),label: 'Time',)
        ],
        selectedItemColor: MyAppColors.white,
        unselectedItemColor: MyAppColors.black,
        showUnselectedLabels: false,
        currentIndex: index,
        onTap: (int i){
          index=i;
          setState(() {

          });
        },
      ),)
    );
  }
}
