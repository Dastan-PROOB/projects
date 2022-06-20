import 'package:emoji_alert/arrays.dart';
import 'package:emoji_alert/emoji_alert.dart';
import 'package:flutter/material.dart';

class AvatarBalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => {
                EmojiAlert(
                  emojiType: EMOJI_TYPE.SMILE,
                  description: Text(
                    'Здесь пока ничего нет',
                    style: TextStyle(color: Colors.grey.shade900, fontSize: 22),
                  ),
                  enableMainButton: true,
                  mainButtonText: Text(
                    'Назад',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  onMainButtonPressed: () {
                    Navigator.pop(context);
                  },
                ).displayAlert(context),
              },
              child: Container(
                alignment: Alignment.center,
                width: height / 13.533,
                height: height / 13.533,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/avatar/zxcc.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(width: 10),
            const Text(
              'Моника Беллуччи',
              style: TextStyle(color: Color(0xFF000000), fontSize: 16),
            ),
          ],
        ),
        SizedBox(width: width/5.769),
        GestureDetector(
          onTap: () => {
            EmojiAlert(
              emojiType: EMOJI_TYPE.SMILE,
              description: Text(
                'Здесь пока ничего нет',
                style: TextStyle(color: Colors.grey.shade900, fontSize: 22),
              ),
              enableMainButton: true,
              mainButtonText: Text(
                'Назад',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              onMainButtonPressed: () {
                Navigator.pop(context);
              },
            ).displayAlert(context),
          },
          child: Container(
            alignment: Alignment.center,
            width: width / 4.80769,
            height: height / 21.368,
            decoration: BoxDecoration(
              color: Color(0xFFFF6B00),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('1520 сом',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 14),),
          ),
        ),
      ],
    );
  }
}
