import 'package:emoji_alert/arrays.dart';
import 'package:emoji_alert/emoji_alert.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Категории',
            style: TextStyle(color: Color(0xFF313131), fontSize: 17),
          ),
          TextButton(
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
              child: const Text(
                'Всё',
                style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 13),
              )),
        ],
      ),
    );
  }
}
