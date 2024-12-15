import 'package:flutter/material.dart';
import 'package:islami/Radio/option_widget.dart';
import 'package:islami/Radio/records_widget.dart';
import 'package:islami/data_features/my_app_colors.dart';
import 'package:islami/data_features/my_theme_data.dart';

class RadioScreen extends StatefulWidget {
  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  bool flag=true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/radio_bg.png'),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: MyAppColors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          flag=true;
                        });
                      },
                      child: OptionWidget(title: 'Radio', flag: flag)
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          flag=false;
                        });
                        },
                      child: OptionWidget(title: 'Reciters', flag: !flag)
                    ),
                  ),
                ],
              )
          ),
          Expanded(child: (flag)?
          ListView(
            children: [
              RecordsWidget(title: '1.1'),
              RecordsWidget(title: '2.1'),
              RecordsWidget(title: '3.1'),
              RecordsWidget(title: '4.1'),
              RecordsWidget(title: '5.1'),
              RecordsWidget(title: '6.1'),
              RecordsWidget(title: '7.1'),
            ],
            scrollDirection: Axis.vertical,
          ):
          ListView(
            children: [
              RecordsWidget(title: '1.2'),
              RecordsWidget(title: '2.2'),
              RecordsWidget(title: '3.2'),
              RecordsWidget(title: '4.2'),
              RecordsWidget(title: '5.2'),
              RecordsWidget(title: '6.2'),
              RecordsWidget(title: '7.2'),
            ],
            scrollDirection: Axis.vertical,
          ))
        ],
      ),
    );
  }
}
