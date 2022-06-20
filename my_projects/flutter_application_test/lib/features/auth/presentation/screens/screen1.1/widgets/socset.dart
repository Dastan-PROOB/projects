import 'package:emoji_alert/arrays.dart';
import 'package:flutter/material.dart';
import 'package:emoji_alert/emoji_alert.dart';

class AuthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
            width: width / 7.5,
            height: height / 16.24,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF225196), width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'assets/images/logo/image 29.png',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        SizedBox(
          width: width / 6.25,
        ),
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
            width: width / 7.5,
            height: height / 16.24,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF225196), width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'assets/images/logo/image 30.png',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ],
    );
  }
}
