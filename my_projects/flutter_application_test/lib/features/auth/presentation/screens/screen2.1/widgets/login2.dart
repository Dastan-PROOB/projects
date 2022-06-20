import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Expanded(
      flex: 45,
      child: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          width: width / 2.3,
          child: const Text(
            'Войти',
            style: TextStyle(
                color: Color(0xFF225196),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        onTap: () => {},
      ),
    );
  }
}
