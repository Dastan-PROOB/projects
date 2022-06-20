import 'package:emoji_alert/arrays.dart';
import 'package:emoji_alert/emoji_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final List<String> name = [
    'Аксессуары',
    'Кино и \nтеатры',
    'Кафе и \nрестораны',
    'Для детей',
    'Здоровье',
    'Образование',
    'Развлечения',
  ];
  final List<IconData> icon = [
    Icons.pedal_bike,
    Icons.slow_motion_video_sharp,
    Icons.dining_outlined,
    Icons.child_care_outlined,
    Icons.health_and_safety_outlined,
    Icons.manage_accounts,
    Icons.gamepad,
  ];
  final List<Color> color = [
    Color(0xFF0085FF),
    Color(0xFFFF6B00),
    Color(0xFF27AE60),
    Color(0xFFD62EDA),
    Color(0xFFA683FF),
    Color(0xFF82265FF),
    Color(0xFF12085FF),
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 5.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: name.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(7),
            child: Column(
              children: [
                Container(
                  width: width / 4.573,
                  height: height / 10.15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    icon: Icon(
                      icon[index],
                      size: 35,
                      color: color[index],
                    ),
                    onPressed: () {
                      EmojiAlert(
                        emojiType: EMOJI_TYPE.SMILE,
                        description: Text(
                          'Здесь пока ничего нет',
                          style: TextStyle(
                              color: Colors.grey.shade900, fontSize: 22),
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
                  ),
                ),
                const SizedBox(height: 13),
                Text(
                  name[index],
                  style:
                      const TextStyle(color: Color(0xFF000000), fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
