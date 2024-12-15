import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Quran/sura_details.dart';
import 'package:islami/data_features/my_app_colors.dart';
import 'package:islami/data_features/my_theme_data.dart';

class SuraDisplay extends StatefulWidget {
  static String routeName = 'SuraDisplay';

  @override
  State<SuraDisplay> createState() => _SuraDisplayState();
}



class _SuraDisplayState extends State<SuraDisplay> {
  @override
  String verses = '';
  Widget build(BuildContext context) {
    int suraIndex = ModalRoute.of(context)!.settings.arguments as int;
    if(verses.isEmpty){GetVerses(suraIndex);}
    return Scaffold(
      appBar: AppBar(
        title: Text(
          SuraDetails.englishQuranSurahs[suraIndex],
          style: MyThemeData.lightTheme.textTheme.bodySmall,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: MyAppColors.primary),
      ),
      body: Container(
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
              SuraDetails.arabicAuranSuras[suraIndex],
              style: MyThemeData.lightTheme.textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
            ),
            verses.isEmpty?
                Center(child: CircularProgressIndicator()):
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Text(verses,style:MyThemeData.lightTheme.textTheme.bodySmall ,textAlign: TextAlign.center,textDirection: TextDirection.rtl,),
                scrollDirection: Axis.vertical,
                itemCount: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
  Future GetVerses(int index) async {
    String Sura =
    await rootBundle.loadString('assets/files/Quran/${index+1}.txt');
    List<String> lines = Sura.split('\n');
    for (int i = 0; i < lines.length; i++) {
      verses += ' ${lines[i]} [${i + 1}] ';
    }
    setState(() {
    });
  }

}

