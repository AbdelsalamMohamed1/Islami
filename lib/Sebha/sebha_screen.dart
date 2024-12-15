import 'package:flutter/material.dart';
import 'package:islami/data_features/my_app_colors.dart';
import 'package:islami/data_features/my_theme_data.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double turns = 0.0;
  int counter = 0;
  int index=0;
  List<String>azkar=["الله اكبر","لا اله الا الله","الحمدلله",'سبحان الله'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/sebha_bg.png'),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          Image(image: AssetImage('assets/images/logo.png')),
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
            style: MyThemeData.lightTheme.textTheme.titleLarge,
          ),
          InkWell(
            onTap: () {
              setState(() {
                if(counter%32==0&&counter>0){
                  if(index<=3){
                    index++;
                    turns += (1 / 33);
                    counter=0;

                  }
                  else{
                    index=0;
                    turns += (1 / 33);
                    counter=0;
                  }
                }
                else{
                  turns += (1 / 33);
                  counter++;
                }
              });
            },
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                AnimatedRotation(
                  turns: turns,
                  duration: Duration(seconds: 1),
                  child: Image(image: AssetImage('assets/images/sebha.png')),
                ),
                Column(
                  children: [
                    Text(
                      azkar[index],
                      style: MyThemeData.lightTheme.textTheme.titleLarge,
                    ),
                    Text(
                      '$counter',
                      style: MyThemeData.lightTheme.textTheme.titleLarge,
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              setState(() {
                turns = 0.0;
                counter = 0;
                index=0;
              });
            },
            child: Text(
              'Reset',
              style: MyThemeData.lightTheme.textTheme.titleLarge,
            ),
            style:
            ElevatedButton.styleFrom(backgroundColor: MyAppColors.primary),
          )
        ],
      ),
    );
  }
}
