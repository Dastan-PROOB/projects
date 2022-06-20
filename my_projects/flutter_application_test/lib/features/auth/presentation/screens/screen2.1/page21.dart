import 'package:emoji_alert/arrays.dart';
import 'package:emoji_alert/emoji_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen2.1/widgets/confirm_password.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen2.1/widgets/login2.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen2.1/widgets/number2.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen2.1/widgets/password2.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen2.1/widgets/register2.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen2.1/widgets/socset2.dart';

class Page21 extends StatefulWidget {
  @override
  State<Page21> createState() => _Page21State();
}

class _Page21State extends State<Page21> {
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
              flex: 49,
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
            const Spacer(flex: 46),
            NumberForm(),
            const Spacer(flex: 15),
            PasswordForm(),
            const Spacer(flex: 15),
            ConfirmPassword(),
            const Spacer(flex: 46),
            Registration(),
            const Spacer(flex: 60),
            LogIn(),
            const Spacer(flex: 85),
          ],
        ),
      ),
    );
  }
}
