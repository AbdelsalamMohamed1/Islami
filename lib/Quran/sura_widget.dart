import 'package:flutter/material.dart';
import 'package:islami/data_features/my_theme_data.dart';

class SuraWidget extends StatelessWidget {
  int index;
  String suraEnName;
  String suraArName;
  String numOfVerses;

  SuraWidget(
      {required this.index,
      required this.numOfVerses,
      required this.suraArName,
      required this.suraEnName});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage('assets/images/verses_frame.png')),
              Text(
                "${index + 1}",
                style: MyThemeData.lightTheme.textTheme.displayLarge,
              )
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            children: [
              Text(
                suraEnName,
                style: MyThemeData.lightTheme.textTheme.bodyLarge,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '$numOfVerses Verses',
                style: MyThemeData.lightTheme.textTheme.displayLarge,
              )
            ],
          ),
        ],
      ),
      Text(suraArName,style: MyThemeData.lightTheme.textTheme.bodyLarge,),
    ]);
  }
}
