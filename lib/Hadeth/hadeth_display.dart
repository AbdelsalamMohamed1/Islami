import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_screen.dart';
import 'package:islami/data_features/my_app_colors.dart';

import '../data_features/my_theme_data.dart';

class HadethDisplay extends StatelessWidget {
 static String routeName='HadethDisplay';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth=ModalRoute.of(context)!.settings.arguments as Hadeth;
    String title=hadeth.title;
    List<String>lines=hadeth.lines;
    int index=hadeth.index;
    return Scaffold(
      appBar: AppBar(
        title: Text('hadeth ${index+1}',style: MyThemeData.lightTheme.textTheme.bodySmall,),
        centerTitle: true,
        iconTheme: IconThemeData(color: MyAppColors.primary),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/details_screen.png',
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
              style: MyThemeData.lightTheme.textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
            ),
            lines.isEmpty?
            Center(child: CircularProgressIndicator()):
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Text(lines[index],style:MyThemeData.lightTheme.textTheme.bodySmall ,textAlign: TextAlign.center,textDirection: TextDirection.rtl,),
                scrollDirection: Axis.vertical,
                itemCount: lines.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
