import 'package:emoji_alert/arrays.dart';
import 'package:emoji_alert/emoji_alert.dart';
import 'package:flutter/material.dart';


class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon:const Icon(
            Icons.menu,
            color: Color(0xFF225196),
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {
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
            ).displayAlert(context);
          },
          icon: const Icon(
            Icons.search,
            color: Color(0xFF225196),
            size: 30,
          ),
        ),
      ],
    );
  }
}

