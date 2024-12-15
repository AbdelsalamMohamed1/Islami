import 'package:flutter/material.dart';

import '../data_features/my_app_colors.dart';
import '../data_features/my_theme_data.dart';

class OptionWidget extends StatelessWidget {
  String title;
  bool flag;
  OptionWidget({required this.title, required this.flag});
  @override
  Widget build(BuildContext context) {
    return (flag)?Container(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: MyThemeData.lightTheme.textTheme.bodyMedium,
      ),
      decoration: BoxDecoration(
          color: MyAppColors.primary,
          borderRadius: BorderRadius.circular(15)) ,
      padding: EdgeInsets.all(10),
    ):Container(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: MyThemeData.lightTheme.textTheme.bodyLarge,
      ),
      decoration: BoxDecoration(
          color: MyAppColors.black,
          borderRadius: BorderRadius.circular(15)) ,
      padding: EdgeInsets.all(10),
    );
  }
}
