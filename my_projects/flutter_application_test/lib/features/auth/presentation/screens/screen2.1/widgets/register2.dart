import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Expanded(
      flex: 45,
      child: GestureDetector(
        child: Container(
          width: width / 1.53,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFF225196),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Text(
            'Зарегистрироваться',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
        ),
        onTap: () => {
          Navigator.of(context).pushNamed('/page1'),
        },
      ),
    );
  }
}
