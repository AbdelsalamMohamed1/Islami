import 'package:flutter/material.dart';
import 'package:islami/Quran/sura_details.dart';
import 'package:islami/Quran/sura_widget.dart';
import 'package:islami/data_features/my_app_colors.dart';
import 'package:islami/data_features/my_theme_data.dart';

class QuranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/quran_bg.png'),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          const Image(image: AssetImage('assets/images/logo.png')),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Sura Name',
              hintStyle: MyThemeData.lightTheme.textTheme.displayLarge,
              prefixIcon:
                  const ImageIcon(AssetImage('assets/images/ic_quran.png')),
              prefixIconColor: MyAppColors.primary,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyAppColors.primary)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyAppColors.primary)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Most Recently',
                style: MyThemeData.lightTheme.textTheme.displayLarge,
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyAppColors.primary),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const SizedBox(
              height: 10,
              width: 10,
            ),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return SuraWidget(
                        index: index,
                        numOfVerses: SuraDetails.AyaNumber[index],
                        suraArName: SuraDetails.arabicAuranSuras[index],
                        suraEnName: SuraDetails.englishQuranSurahs[index]);
                  },
                  separatorBuilder: (context, index) => const Divider(
                        indent: 15,
                        endIndent: 150,
                        color: Colors.grey,
                      ),
                  itemCount: SuraDetails.arabicAuranSuras.length))
        ],
      ),
    );
  }
}
