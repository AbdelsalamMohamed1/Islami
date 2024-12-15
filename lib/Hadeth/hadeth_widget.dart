import 'package:flutter/material.dart';

import '../data_features/my_theme_data.dart';

class HadethWidget extends StatelessWidget {
  List<String>lines;
  String title;
  HadethWidget({required this.lines,required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/hadeth_details_bg.png',
              ),
              fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Text(
            title,
            style: MyThemeData.lightTheme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .06,
          ),
          lines.isEmpty?
          Center(child: CircularProgressIndicator()):
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Text(lines[index],style:MyThemeData.lightTheme.textTheme.bodyMedium ,textAlign: TextAlign.center,textDirection: TextDirection.rtl,),
              scrollDirection: Axis.vertical,
              itemCount: lines.length,
            ),
          )
        ],
      ),
    );
  }
}
