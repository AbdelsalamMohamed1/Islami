import 'package:flutter/material.dart';

class HadethScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/hadeth_bg.png'),fit: BoxFit.fill)),
    );
  }
}
