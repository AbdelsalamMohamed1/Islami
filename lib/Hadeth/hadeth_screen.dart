import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Hadeth/hadeth_display.dart';
import 'package:islami/Hadeth/hadeth_widget.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  @override
  Widget build(BuildContext context) {
    if (displayedHadeth.isEmpty) {
      loadHadeth();
    }
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/hadeth_bg.png'),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          Image(image: AssetImage('assets/images/logo.png')),
          Expanded(
              child: CarouselSlider.builder(
            itemBuilder: (context, index, realIndex) =>
                (displayedHadeth.isEmpty)
                    ? Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/hadeth_details_bg.png',
                                ),
                                fit: BoxFit.fill)),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, HadethDisplay.routeName,arguments: Hadeth(
                      lines: displayedHadeth[index].lines,
                      title: displayedHadeth[index].title,
                      index: index
                    ));
                  },
                  child: HadethWidget(
                      lines: displayedHadeth[index].lines,
                      title: displayedHadeth[index].title),
                    ),
            itemCount: 50,
            options: CarouselOptions(
              height: double.infinity,
            ),
          ))
        ],
      ),
    );
  }

  List<Hadeth> displayedHadeth = [];

  Future<void> loadHadeth() async {
    for (int i = 1; i <= 50; i++) {
      String hadeth =
          await rootBundle.loadString('assets/files/Hadeth/h$i.txt');
      List<String> lines = hadeth.split('\n');
      String title = lines[0];
      lines.removeAt(0);
      displayedHadeth.add(Hadeth(lines: lines, title: title));
    }
    setState(() {});
  }
}

class Hadeth {
  List<String> lines;
  String title;
  int index;
  Hadeth({required this.lines, required this.title,this.index=0});
}
