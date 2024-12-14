import 'package:flutter/material.dart';

class SuraWidget extends StatelessWidget {

  int index;
  String suraEnName;
  String suraArName;
  String numOfVerses;
  SuraWidget({required this.index, required this.numOfVerses, required this.suraArName, required this.suraEnName});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Row(
          children: [
            Expanded(
              child: Stack(alignment: Alignment.center,
                children: [
                  Image(image: AssetImage('assets/images/verses_frame.png')),
                  Text('$index')
                ],),
            ),
      ],
    )]);
  }
}
