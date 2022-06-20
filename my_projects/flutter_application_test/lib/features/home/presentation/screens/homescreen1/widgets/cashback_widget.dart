import 'package:emoji_alert/arrays.dart';
import 'package:emoji_alert/emoji_alert.dart';
import 'package:flutter/material.dart';

class CashbackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Text(
                'Горячие кешбеки',
                style: TextStyle(color: Color(0xFF313131), fontSize: 17),
              ),
              SizedBox(width: 13),
              Icon(Icons.fireplace,size: 22,color: Color(0xFFFF0707),),
            ],
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
                style: TextStyle(color: Color(0xFF313131), fontSize: 13),
              )),
        ],
      ),
    );
  }
}
