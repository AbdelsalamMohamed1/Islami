import 'package:flutter/material.dart';
import 'package:islami/data_features/my_app_colors.dart';

class RecordsWidget extends StatefulWidget {
  String title;

  RecordsWidget({required this.title});

  @override
  State<RecordsWidget> createState() => _RecordsWidgetState();
}

class _RecordsWidgetState extends State<RecordsWidget> {
  bool favorite = false;

  bool play = false;

  bool mute = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: MyAppColors.primary),
      child: Stack(alignment: Alignment.center,
        children: [
          (play)?Image(image: AssetImage('assets/images/readio_soundwave_bg.png'),fit: BoxFit.cover,):
          Image(image: AssetImage('assets/images/radio_mosque_bg.png'),fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(widget.title),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        favorite=!favorite;
                      });
                    },
                    child: (favorite)?ImageIcon(AssetImage('assets/images/ic_unfavorite.png')):
                  ImageIcon(AssetImage('assets/images/ic_favorite.png')),),
                  InkWell(
                    onTap: (){
                      setState(() {
                        play=!play;
                      });
                    },
                    child: (play)?ImageIcon(AssetImage('assets/images/ic_play.png')):
                  ImageIcon(AssetImage('assets/images/ic_pause.png')),),
                  InkWell(
                    onTap: (){
                      setState(() {
                        mute=!mute;
                      });
                    },
                    child: (mute)?ImageIcon(AssetImage('assets/images/ic_muted.png')):
                  ImageIcon(AssetImage('assets/images/ic_unmuted.png')),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
