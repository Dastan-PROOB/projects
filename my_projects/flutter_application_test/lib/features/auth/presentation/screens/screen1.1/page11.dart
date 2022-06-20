import 'package:emoji_alert/arrays.dart';
import 'package:emoji_alert/emoji_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen1.1/widgets/login.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen1.1/widgets/number.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen1.1/widgets/password.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen1.1/widgets/register.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen1.1/widgets/socset.dart';

class Page11 extends StatefulWidget {
  @override
  State<Page11> createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(
              flex: 110,
            ),
            Expanded(
              flex: 108,
              child: Image(
                width: width / 3.4722,
                height: height / 7.51851852,
                image: const AssetImage('assets/images/logo/Group 174.png'),
              ),
            ),
            const Spacer(
              flex: 54,
            ),
            const Expanded(
              flex: 21,
              child: SizedBox(
                child: Text(
                  'Войти через социальные сети',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF515151),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Spacer(flex: 25),
            AuthWidget(),
            const Spacer(flex: 43),
            NumberForm(),
            const Spacer(flex: 15),
            PasswordForm(),
            const Spacer(flex: 22),
            LogIn(),
            const Spacer(flex: 13),
            Expanded(
              flex: 26,
              child: TextButton(
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Не можете войти?',
                    style: TextStyle(color: Color(0xFF225196), fontSize: 12),
                  ),
                ),
                onPressed: () => {
                  EmojiAlert(
                    emojiType: EMOJI_TYPE.SMILE,
                    description: Text(
                      'Здесь пока ничего нет',
                      style:
                          TextStyle(color: Colors.grey.shade900, fontSize: 22),
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
              ),
            ),
            const Spacer(flex: 87),
            Registration(),
            const Spacer(flex: 70),
          ],
        ),
      ),
    );
  }
}
